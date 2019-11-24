
import UIKit

// Linked list: Algorithm Challenge: Add node in linkedlist in specific index - Swift **********************************************************

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
let node5 = Node(value: 5, next: nil)
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


// Linked list: Algorithm Challenge: add node in Linked List - Swift
func addNode(node: Node?, linkedList: Node?, index: Int) -> Node? {
    
    var curruntNode = linkedList
    var preNode: Node?
    var count = 0
    while count != index {
        preNode = curruntNode
        curruntNode = curruntNode?.next
        count += 1
    }
    if index == 0 {
        node?.next = linkedList
        return node
    }
    node?.next = curruntNode
    preNode?.next = node
    return linkedList
}

print(printNode(node: addNode(node: node6, linkedList: node1, index: 0)) )
