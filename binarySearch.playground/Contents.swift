import UIKit


let numbers = [1,4,7,9,11,24,27,32,43]

var min = 0
var max = numbers.count - 1

func binarySearch(_ array: [Int], _ key: Int) -> Bool {
    
    var minIndex = 0
    var maxIndex = array.count - 1
    
    while minIndex <= maxIndex {
        
        let midIndex = Int((minIndex + maxIndex)/2)

        if minIndex > maxIndex {
            return false
        }
        
        if key == array[midIndex] {
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

func binarySearchRecursive(_ array: [Int], _ key: Int, min: inout Int, max: inout Int) -> Bool {
    
        if array.count == 0 {return false}
        print(min)
        // if this is the first iteration then
//        var min = 0
//        var max = array.count - 1
    
        if key < array[min] || key > array[max] {
            print("item is is not in the array")
            return false
        }
        
            let mid = Int((min + max) / 2)
            print(mid)
        
            if min > max {
                return false
            }
        
            if array[mid] == key {
                return true
            }
        
            if key > array[mid] {
                print("key is greater than the item")
                min = mid + 1
                return binarySearchRecursive(array, key, min: &min, max: &max)
            }
        
            if key < array[mid] {
                print("key is less than the item")
                max = mid - 1
                return binarySearchRecursive(array, key, min: &min, max: &max)
            }
        
        print("\(key) is not the array")
        print("array item: \(array[mid])")
        return false
    }

binarySearchRecursive(numbers, 1, min: &min, max: &max)
    //binarySearch(numbers, 11)













