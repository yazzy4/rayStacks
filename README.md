# rayDSA

## Stacks - Pancakes, plates and more!

To Do: 
- Implement a stack 
- Reverse an array using a stack 
- Balance parentheses 

**Stack Operations**

The main goal of builing a stack enforce how you access your data. When thinking of building stacks it is not dissimilar building a stack of pancakes. It's all not dissimilar to eating said stack of pancakes in that, if you are fixing a plate for yourself you'll likely grab one from the top.

**LIFO**
Stacks operate on the above and basic principle or data structure. **L**ast **I**n **F**irst **O**ut. This cat gets it!

![](https://media.giphy.com/media/NEelVYGngdrqg/giphy.gif)

 **push()**
  -Adds and element to the top of a stack

 **pop()**
  -Removes the top element of the stack

 **peek()**
  -Takes a look at the top element without mutating its contents

#### Implementation

```swift
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
   
}

```

This sets up the initial storage of the stack. Storing a stack in an array is an easy way to implement the in out feature of a stack or the ```push()``` and ```pop()``` methods.

```CustomStringConvertible```is doing a few things

- First, we are creatinf an array that uses a closure method to map the elements to the ```String``` by ```storage```.map ```{ "\($0)"}
- Next, we are adding a new array that will reverse the previous array using the ```reversed()``` built in function
- Finally, the array is flattened into a string using the ```joined(seperator:)``` . The elements are then seperated by the newline character ```\n``` this stacks each of the elements into array in reverse order, with the last element on top 

Now its time time to add the ```push()``` and ```pop()``` methods the the stack formation that has been set up

```swift
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
     
      public mutating func pop() -> Element? {
         storage.popLast()
     }
     
     if let poppedElement = stack.pop() {
    assert(4 == poppedElement)
    print("Popped: \(poppedElement)")
  }
   
}


  var stack = Stack<Int>()
    stack.push(1)
    stack.push(2)
    stack.push(3)
    stack.push(4)

print(stack)
```


Here, we are simply adding a new element to the array and naming the labeling the last element ```popLast()```. We then call the stack by creating a new variable ```stack``` and setting its element type to type Int. When the stack is called it will look like this

```swift
----Example of using Stack----
----top----
4
3
2
1
--------
Popped: 4
```
