import UIKit


struct Stack<Element> {
    
    fileprivate var array : [Element] = []
    
    mutating func push(_ element: Element) {
        array.append(element)
    }
    mutating func pop() -> Element? {
        return array.popLast()
    }
    func peak() -> Element? {
        return array.last
    }
    //MARK:  computed properties
    var isEmpty : Bool {
        return array.isEmpty
    }
    
    var count: Int {
        return array.count
    }
}

var rwBookStack = Stack<String>()

rwBookStack.push("3D Games by Tutorials")
rwBookStack.push("tvOS Apprentice")
rwBookStack.push("iOS Apprentice")
rwBookStack.push("Swift Apprentice")

print(rwBookStack)


extension Stack : CustomStringConvertible {
    var description: String {
        let topDivider = "---Stack---\n"
        let bottomDivider = "\n-----------\n"
        
        let stackElements = array.map {"\($0)"}.reversed().joined(separator: "\n")
        
        return topDivider + stackElements + bottomDivider
    }
}

rwBookStack.isEmpty

























