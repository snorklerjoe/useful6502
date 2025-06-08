; ---------------------------------------------------------------------------
; tree.s
; ---------------------------------------------------------------------------
;
; Data structure for the root filesystem tree.
;
; The scheme here is to have a tree of nodes, each node representing a file or
; directory. Each node has a parent and a list of children. The root node is
; the root of the filesystem tree.
; Leaf nodes represent either system files or directories to which driver-
; produced filesystems are mounted. Any non-volatile files should not be specified
; in this tree, but loaded from disk via a driver that has callbacks at a leaf
; node.
;
; To allow the tree's leaf nodes to be the mount points for driver-produced
; filesystems, when descending the tree via a file path, each node will be
; passed a pointer to the subsequent relative path.
;

.import ptr1, ptr2, ptr3, ptr4
.import _malloc

.export TREE_NODE_CHILD, TREE_NODE_NAME, TREE_NODE_OPEN, TREE_NODE_PARENT
.export TREE_NODE_SIZE

.export tree_new_node

; Node Data Structure
; -------------------
; - Parent node pointer
; - Pointer to the node's name  (malloc'd string)
; - Pointer to an array of child nodes (malloc'd array of pointers)
; - Pointer to open callback  (returns a file descriptor)

TREE_NODE_SIZE = 16  ; Size of a tree node in bytes

TREE_NODE_PARENT = 0  ; Offset of parent node pointer in a tree node
TREE_NODE_NAME   = 2  ; Offset of name pointer in a tree node
TREE_NODE_CHILD  = 4  ; Offset of child nodes pointer in a tree node
TREE_NODE_OPEN   = 6  ; Offset of open callback pointer in a tree node


; Malloc a new tree node.
; Specify pointer to parent node in AX.
tree_new_node:
    ; Save parent node pointer to ptr1
    sta ptr1
    stx ptr1+1

    ; Allocate dynamic memory for the new node
    lda #TREE_NODE_SIZE ; Load size of node for malloc
    ldx #0
    jsr _malloc          ; Allocate memory for the node
                        ; AX = pointer to new node

    ; 

