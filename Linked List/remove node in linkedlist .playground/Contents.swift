import UIKit

// Linked list: Algorithm Challenge: Remove node in linkedlist in specific index - Swift **********************************************************

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


// Linked list: Algorithm Challenge: remove node in Linked List - Swift
func removeNode( value: Int?, from linkedList: Node?) -> Node? {

    var currentNode = linkedList
    var preNode: Node?
    while currentNode != nil {
        if currentNode?.value == value {
            if preNode == nil {
                return currentNode?.next
            }
            preNode?.next = currentNode?.next
            return linkedList
        } else {
            preNode = currentNode
            currentNode = currentNode?.next
        }
    }
    return linkedList
}
printNode(node: removeNode(value: 3, from: node1))
