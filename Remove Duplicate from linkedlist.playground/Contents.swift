import UIKit

// Linked list: Algorithm Challenge: Remove duplicate from sorted Linked List - Swift **********************************************************

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
let node5 = Node(value: 4, next: node6)
let node4 = Node(value: 4, next: node5)
let node3 = Node(value: 2, next: node4)
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


// Linked list: Algorithm Challenge: Remove Duplicate from sorted liked list - Swift
func removeDuplicate(node: Node?) -> Node? {
    var current = node
    var temp_next: Node?
    
    while current?.next != nil {
        if current?.value == current?.next?.value {
            temp_next = current?.next?.next
            current?.next = temp_next
        } else {
            current = current?.next
        }
    }
    return node
}
printNode(node: removeDuplicate(node: node1))


