import UIKit

// Linked list: Algorithm Challenge: Reverse Linked List - Swift **********************************************************
// Input: 1->2->3->4->5->6->nil

//We have to use class to create node because struct is a Value type and  struct cannot have a stored property that recursively contains it
//struct Node {
//    let value: Int
//    let next: Node?
//}

// First need to create Node
class Node {
    let value: Int
    var next: Node?
    
    init(value: Int, next: Node?) {
        self.value = value
        self.next = next
    }
}

let node6 = Node(value: 6, next: nil)
let node5 = Node(value: 5, next: node6)
let node4 = Node(value: 4, next: node5)
let node3 = Node(value: 3, next: node4)
let node2 = Node(value: 2, next: node3)
let node1 = Node(value: 1, next: node2)

// Print the node values
func printNode(node: Node?) {
    
    var curruntNode = node
    while curruntNode != nil {
        print(curruntNode?.value ?? -1)
        curruntNode = curruntNode?.next
    }
}


// Linked list: Algorithm Challenge: Reverse Linked List - Swift (1->2->3->4->5->6->nil)
func reverseLinkedList(node: Node?) -> Node? {

    var curruntNode = node

    var preNode: Node?
    var nextNode: Node?

    while curruntNode != nil {
        nextNode = curruntNode?.next
        curruntNode?.next = preNode
        preNode = curruntNode
        curruntNode = nextNode
    }
    return preNode
}
// This is output of reverse linklist
printNode(node: reverseLinkedList(node: node1))

