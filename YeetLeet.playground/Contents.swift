import UIKit



    var nums = [1,1,2,3,7,4]

/*
 Restate the problem: We're given an array and a value, and we want to remove all duplicates of that value in that array(without duplicating the array).
 Clarifying questions: Are there any negative numbers? are we excluding floats, and doubles? is the array sorted?
 assumptions: sorted array, duplicate nums, positive integers
 
 loop through the array and if the item matches the value delete the value.
 return the number of item in the array.

*/

func removeDuplicates(_ nums: inout [Int], _ value: Int = 2 ) -> Int {
        
    for (index,_) in nums.enumerated().reversed() {
 
            if index == 0 {break}

                if nums[index] == value {
                    print("this is the value\(nums[index])")
                    nums.remove(at: index)
                }
        }
        print(nums)
        return nums.count
    }

removeDuplicates(&nums)
