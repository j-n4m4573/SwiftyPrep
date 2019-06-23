import UIKit



    var nums = [1,1,2,3,7,4]

/*
 Restate the problem: We're given an array and a value, and we want to remove all duplicates of that value in that array(without duplicating the array).
 Clarifying questions: Are there any negative numbers? are we excluding floats, and doubles? is the array sorted?
 assumptions: sorted array, duplicate nums, positive integers
 
 loop through the array and if the item matches the value delete the value.
 return the number of item in the array.

*/

func removeElement(_ nums: inout [Int], _ value: Int = 2 ) -> Int {
        
    for (index,_) in nums.enumerated().reversed() {
        
            if index == 0 {break}

                if nums[index] == value {
                    print("this is the value \(nums[index])")
                    nums.remove(at: index)
                }
        }
        return nums.count
    }

removeElement(&nums)
/*
 Restate the problem: We're given a sorted array and we want to remove the duplicates in this array and return the count after we remove the duplicates.
 Clarifying questions: Are the numbers only Ints? Will the numbers contain floats or doubles? will the numbers contain negative numbers?
 Assumptions: Sorted array, all positive integers, return type is Int, count of array
 Process: Loop through the array and check to see if
*/
var newNums = [1,1]

func removeDuplicates(_ nums: inout [Int]) -> Int {
    
    for (index,value) in nums.enumerated().reversed() {
        
        if index == 0 {break}

        if nums[index - 1] == value {
            print("deleting num \(nums[index])")
            nums.remove(at: index)
        }
        
        if nums.count == 1 {break}
    }
    return nums.count
}

removeDuplicates(&newNums)

func removeDuplicatesWithSet(_ nums: inout [Int]) -> Int {
    return Array(Set(nums.sorted())).count
}

removeDuplicatesWithSet(&nums)
