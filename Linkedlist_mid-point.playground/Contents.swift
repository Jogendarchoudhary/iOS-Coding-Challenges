import UIKit

// Linked list: Algorithm Challenge: Linked list mid-point ****************************************************************
//Simple solution
//
//A simple way to determine the middle node would be to fully pass through all nodes in the linked list and count how many elements there are in total. Then traverse the linked list again this time stopping at the total/2 node. For example, the first time you traverse the linked list your program determines there are 10 nodes, then the second pass through the linked list you stop at the 5th node, which is the middle node. This is a possible solution, but there is a faster way.
//
//Faster solution using 2 pointers
//
//What we'll do is setup two pointers, one that will traverse the linked list one node at a time, and the other pointer will traverse two nodes at a time. This way when the faster pointer reaches the end of the linked list, the slower pointer will be halfway there because it was only moving one node at time while the faster one was moving two nodes at a time. This allows you to find the middle node of a linked list with only one pass, instead of passing through the whole linked list once, and then again to find the middle element.

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

func findMidElementOfLinkedList(node: Node?) -> Int? {
    
    var currentNode = node
    var fastNode = node
    while fastNode?.next != nil && fastNode?.next?.next != nil {
        currentNode = currentNode?.next
        fastNode = fastNode?.next?.next
    }
    return currentNode?.value
}
print(findMidElementOfLinkedList(node: node1) ?? -1)
