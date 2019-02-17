import UIKit

// Linked list: Algorithm Challenge: How to Find If Linked List Contains Loop or Cycle****************************************************************
// Two pointers, fast and slow is used while iterating over linked list. Fast pointer moves two nodes in each iteration, while slow pointer moves to one node. If linked list contains loop or cycle than both fast and slow pointer will meet at some point during iteration. If they don't meet and fast or slow will point to null, then linked list is not cyclic and it doesn't contain any loop.
// First need to create Node
class Node {
    let value: Int
    var next: Node?
    
    init(value: Int, next: Node?) {
        self.value = value
        self.next = next
    }
}

var node6 = Node(value: 6, next: nil)
let node5 = Node(value: 5, next: node6)
let node4 = Node(value: 4, next: node5)
let node3 = Node(value: 3, next: node4)
let node2 = Node(value: 2, next: node3)
let node1 = Node(value: 1, next: node2)
node6.next = node1 // comment this line to remove cycle

func isCyclic(node: Node?) -> Bool {
    
    var currentNode = node
    var fastNode = node
    while fastNode?.next != nil && fastNode?.next?.next != nil {
        currentNode = currentNode?.next
        fastNode = fastNode?.next?.next
        if currentNode === fastNode{
            return true
        }
    }
    return false
}
print(isCyclic(node: node1))
