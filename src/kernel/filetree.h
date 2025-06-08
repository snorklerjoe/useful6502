/* Core file system access functions.
 * 
 * The filesystem will be structured as such,
 * with an asterisk (*) indicating a node initialized at boot
 * and a plus (+) indicating a leaf node initialized by a driver:
 * 
 * Root
 *  |- /dev *
 *  |    |- /null   (null device driver)    +
 *  |    |- /zero   (zero device driver)    +
 *  |    |- /random (random device driver)  +
 *  |    |- /tty0   (tty device driver)     +
 *  |    |- /uart0  (uart device driver)    +
 *  |    ...
 *  |- /proc (procfs)           * (+)
 *  |    |- /0
 *  |    |   |- /exe
 *  |    |   |- /cmdline
 *  |    |   |- /cwd
 *  |    |   |- /fd
 *  |    |   |- /status
 *  |    |- /1
 *  |     ...
 *  |- /sys  (sysfs)            * (+)
 *  |   |- /version
 *  |   |- /uptime
 *  |   |- /cmdline
 *  |   |- /drivers
 *  |   |- /kernelinfo
 *  |   |- /cpuinfo
 *  |   +- /meminfo
 *  |- /tmp  (ramfs)           *
 *  +- /mnt                    *
 * 
 * Any non-volatile filesystems will be mounted under /mnt,
 * and this will be the extent of the root filesystem.
 * Any file outside of /mnt will be volatile.
 */

#ifndef FILE_H
#define FILE_H

struct file_descriptor {
    unsigned int fd;            // File descriptor ID
    struct fs_treenode *node;   // Pointer to the file's node in the tree
    unsigned int flags;         // File flags
    unsigned int offset;        // Current file offset
};

struct fs_treenode_payload {
    void (*preunlink)();  // Cleanup function to run before unlinking

    void *data;           // Pointer to any data associated with this node
}

struct fs_treenode {
    char *name;
    struct fs_treenode *parent;
    struct fs_treenode **children;

    struct fs_treenode_payload *payload;    
};

#endif

