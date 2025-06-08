#include "file_descriptor.h"


// returns 0 on success, 1 on failure
unsigned char file_open(struct file_descriptor *fd, unsigned char flags) {
    if (fd->flags & FD_FLAG_OPEN) {
        return 1;
    }

    fd->flags |= FD_FLAG_OPEN;

    if (flags & FD_FLAG_OREAD) {
        if (fd->flags & FD_FLAG_READABLE) {
            fd->flags |= FD_FLAG_OREAD;
        } else return 1;  // Invalid mode for the file
    }

    if (flags & FD_FLAG_OWRITE) {
        if (fd->flags & FD_FLAG_WRITABLE) {
            fd->flags |= FD_FLAG_OWRITE;
        } else return 1;  // Invalid mode for the file
    }

    fd->flags |= FD_FLAG_OAPPEND;

    // Call driver open callback, if provided
    if (fd->onopen) {
        fd->onopen(fd);
    }

    return 0;
}

unsigned char file_close(struct file_descriptor *fd) {
    if (!(fd->flags & FD_FLAG_OPEN)) {
        return 1;  // File is not open, why close?
    }

    // Call driver close callback, if provided
    if (fd->onclose) {
        fd->onclose(fd);
    }

    // Mark the file as closed
    fd->flags &= ~FD_FLAG_OPEN;

    return 0;
}

unsigned char file_seek(struct file_descriptor *fd, unsigned int position) {
    if (!(fd->flags & FD_FLAG_OPEN)) {
        return 1;  // File is not open
    }

    fd->position = position;

    // Call driver seek callback, if provided
    if (fd->onseek) {
        fd->onseek(fd, position);
    }

    return 0;
}

unsigned int file_read(struct file_descriptor *fd, void *buf, unsigned char count) {
    if (!(fd->flags & FD_FLAG_OPEN)) {
        fd->flags |= FD_ERR_NOTOPEN;
        return 0;  // File is not open
    }

    if (!(fd->flags & FD_FLAG_READABLE)) {
        fd->flags |= FD_ERR_ILLR;
        return 0;  // File is not readable
    }

    // Call driver read callback, if provided
    if (fd->read) {
        return fd->read(fd, buf, count);
    } else fd->flags |= FD_ERR_INVALIDOP;

    return 0;
}

unsigned int file_write(struct file_descriptor *fd, void *buf, unsigned char count) {
    if (!(fd->flags & FD_FLAG_OPEN)) {
        fd->flags |= FD_ERR_NOTOPEN;
        return 0;  // File is not open
    }

    if (!(fd->flags & FD_FLAG_WRITABLE)) {
        fd->flags |= FD_ERR_ILLW;
        return 0;  // File is not writable
    }

    // Call driver write callback, if provided
    if (fd->write) {
        return fd->write(fd, buf, count);
    } else fd->flags |= FD_ERR_INVALIDOP;

    return 0;
}

unsigned char file_truncate(struct file_descriptor *fd, unsigned int newlength) {
    if (!(fd->flags & FD_FLAG_OPEN)) {
        return 1;  // File is not open
    }

    // Call driver truncate callback, if provided
    if (fd->truncate) {
        return fd->truncate(fd, newlength);
    } else fd->flags |= FD_ERR_INVALIDOP;

    return 0;
}

unsigned char file_eof(struct file_descriptor *fd) {
    return (fd->flags & FD_FLAG_EOF) ? 1 : 0;
}

