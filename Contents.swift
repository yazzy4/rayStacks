import UIKit

//Stacks

public struct Stack<Element> {

    private var storage: [Element] = []

    public init() {}


}


extension Stack: CustomStringConvertible {

    public var description: String {
        """
        ----Example of using Stack----
        ----top----
        \(storage.map {"\($0)"}.reversed().joined(separator: "\n"))
        --------
        """

        }
    public mutating func push(_ element: Element){
         storage.append(element)
     }

     @discardableResult
     public mutating func pop() -> Element? {
         storage.popLast()
     }

    public init(_ elements: [Element]){
           storage = elements
       }
}

    var stack = Stack<Int>()
    stack.push(1)
    stack.push(2)
    stack.push(3)
    stack.push(4)

print(stack)

if let poppedElement = stack.pop() {
    assert(4 == poppedElement)
    print("Popped: \(poppedElement)")
}


//initializing a stack from an array
let array = ["A","B","C","D"]
var stackArray = Stack(array)
print(stackArray)
stackArray.pop()









