import Foundation

protocol Queue {
    associatedtype Element
    var isEmpty: Bool { get }
    var peek: Element { get }
    mutating func Enqueue(_ element: Element)
    mutating func Dequeue() -> Element?
    func printQueue()
}

struct ArrayQueue<T>: Queue{
    
    private var array: [T] = []
    
    var isEmpty: Bool {
        array.isEmpty
    }
    
    var peek: T {
        array.first
    }
    
    init() { }
    
    //O(1)
    mutating func Enqueue(_ element: T) {
        array.append(T)
    }
    
    //O(n)
    mutating func Dequeue() -> T? {
        return isEmpty ? nil : array.removeFirst()
    }
    
    //O(n)
    func printQueue() {
        array.forEach { item in
            print(item)
        }
    }
}

print("done")
