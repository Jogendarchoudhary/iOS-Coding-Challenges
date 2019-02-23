import UIKit

// Algorithm: Stack(LIFO)
// Stacks are like arrays, but with limited functionality. You can only "push" to add a new element to the top of the stack, "pop" to remove the element from the top, and "peek" at the top element without popping it off.
// Stack Operations:
// 1: push
// 2: pop
// 3: peak

struct Stack<T> {
    var array = [T]()
    
    var isEmpty: Bool {
        return array.isEmpty
    }
    
    var count: Int {
        return array.count
    }
    
    mutating func push(_ element: T) {
        array.append(element)
    }
    
    mutating func pop() -> T? {
        return array.popLast()
    }
    
    public var top: T? {
        return array.last
    }
}

var stack = Stack.init(array: [1,2,3,4])
stack.isEmpty
stack.count

stack.push(2)
stack.count

stack.pop()
stack.count

stack.top

