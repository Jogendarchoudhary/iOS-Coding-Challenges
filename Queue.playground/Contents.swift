import UIKit

// Algorithm: Queue(FIFO)
// A queue is a list where you can only insert new items at the back and remove items from the front. This ensures that the first item you enqueue is also the first item you dequeue. First come, first serve!

struct Queue<T> {
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
    
    mutating func dequeue() -> T? {
        if isEmpty {
            return nil
        } else {
            return array.removeFirst()
        }
    }
    
    var front: T? {
        return array.first
    }
}
//Testing
var queue = Queue.init(array: [1,2,3,4])
queue.isEmpty
queue.count

queue.enqueue(2)
queue.count

queue.dequeue()
queue.count

queue.front

