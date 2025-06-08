/* File descriptor structure and related definitions.
 */

#ifndef FILE_DESC_H
#define FILE_DESC_H

// Flags inherent to the file, created upon initialization and updated at open.
#define FD_FLAG_READABLE    0b00000010
#define FD_FLAG_WRITABLE    0b00000100

// Flags set upon open/close
#define FD_FLAG_OPEN        0b00000001
#define FD_FLAG_OREAD       0b00001000
#define FD_FLAG_OWRITE      0b00010000
#define FD_FLAG_OAPPEND     0b00100000

// Flags set by driver
#define FD_FLAG_EOF         0b01000000

// Error flags
#define FD_ERR_INVALIDOP    0b00000001  // Invalid operation (read/write on non-readable/writable file)
#define FD_ERR_NOTOPEN      0b00000010  // File is not open
#define FD_ERR_BUSY         0b00000100  // File is busy (e.g. in use by another process)
#define FD_ERR_ILLR         0b00001000  // Illegal Read to file
#define FD_ERR_ILLW         0b00010000  // Illegal Write to file


struct file_descriptor {
    unsigned int fd;            // File descriptor ID
    unsigned char flags;         // File flags
    unsigned char error_flags;  // Error flags
    unsigned int position;      // Current file position

    unsigned char * subpath;     // Subdirectory/filename, beyond the leaf node
                                 // i.e. /proc/0/fd/1 -> subpath = "/0/fd/1"

    // Read and write functions must be specified by the driver.
    // These use the file descriptor to determine the file and position to read/write.
    unsigned char (*ready)(struct file_descriptor *fd);  // Returns 1 if the file is ready to be read/written
    unsigned char (*read)(struct file_descriptor *fd, void *buf, unsigned char count);
    unsigned char (*write)(struct file_descriptor *fd, void *buf, unsigned char count);
    unsigned char (*truncate)(struct file_descriptor *fd, unsigned int newlength);

    // Open and close functions are optional.
    // These are called when the file is opened or closed, respectively.
    void (*onopen)(struct file_descriptor *fd);  // Called when the file is opened
    void (*onclose)(struct file_descriptor *fd); // Called when the file is closed
    void (*onseek)(struct file_descriptor *fd, unsigned int position); // Called when the file is seeked
    void (*onunlink)(struct file_descriptor *fd); // Called when the file is unlinked
};


unsigned char file_open(struct file_descriptor *fd, unsigned char flags);
unsigned char file_close(struct file_descriptor *fd);
unsigned char file_seek(struct file_descriptor *fd, unsigned int position);

unsigned int file_read(struct file_descriptor *fd, void *buf, unsigned char count);    // Returns # bytes read
unsigned int file_write(struct file_descriptor *fd, void *buf, unsigned char count);
unsigned char file_truncate(struct file_descriptor *fd, unsigned int newlength);

// Returns 1 if the file is at the end of the file.
unsigned char file_eof(struct file_descriptor *fd);

#endif

