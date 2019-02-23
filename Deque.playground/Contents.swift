import UIKit

// Algorithm: Deque
// A regular queue adds elements to the back and removes from the front. The deque also allows enqueuing at the front and dequeuing from the back, and peeking at both ends.

struct Deque<T> {
    var array = [T]()
    
    var isEmpty: Bool {
        return array.isEmpty
    }
    
    var count: Int {
        return array.count
    }
    
    mutating func enqueue(_ element: T) {
        array.append(element)
    }
    
    mutating func enqueueFront(_ element: T) {
        array.insert(element, at: 0)
    }
    
    mutating func dequeue() -> T? {
        if isEmpty {
            return nil
        } else {
            return array.removeFirst()
        }
    }
    
    mutating func dequeueBack() -> T? {
        if isEmpty {
            return nil
        } else {
            return array.removeLast()
        }
    }
    
    func peekFront() -> T? {
        return array.first
    }
    
    func peekBack() -> T? {
        return array.last
    }
}
//Testing

var deque = Deque.init(array: [1,2,3])

deque.count

deque.isEmpty

deque.enqueue(4)
deque.enqueueFront(0)
deque.count

deque.dequeue()
deque.dequeueBack()
deque.count

deque.peekBack()
deque.peekFront()
