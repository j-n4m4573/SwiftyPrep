import UIKit


let numbers = [1,4,7,9,11,24,27,32,43]

func binarySearch(_ array: [Int], _ key: Int) -> Bool {
    
    var minIndex = 0
    var maxIndex = array.count - 1
    
    while minIndex <= maxIndex {
        
        let midIndex = Int((minIndex + maxIndex)/2)

        if minIndex >= maxIndex {
            return false
        }
        
        if array[midIndex] == key {
            print("key: \(key), item: \(array[midIndex])")
            return true
        }
        
        if key > array[midIndex] {
            minIndex = midIndex + 1
        }
    
        if key < array[midIndex] {
            maxIndex = midIndex - 1
            print("key: \(key), item: \(array[midIndex])")
            print("\(midIndex)")
        }
    }
    return false
}

func binarySearchRecursive(_ array: [Int], _ item: Int, min: Int = 0, max : Int = 1) -> Bool {
        let mid = Int((min + max) / 2)
    
        if min >= max {
            return false
        }
    
        if array[mid] == item {
            return true
        }
    
        if array[mid] > item {
            print("more than")
            return binarySearchRecursive(array, item, max: mid - 1)
        }
    
        if array[mid] < item {
            print("less than")
            return binarySearchRecursive(array, item, min: mid + 1)
        }
    
    print("\(item) is not the array")
    print("array item: \(array[mid])")
    return false
}

binarySearchRecursive(numbers, 9)














