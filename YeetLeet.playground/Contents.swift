import UIKit



    var nums = [1,1]

/*
 assumptions: sorted array, duplicate nums, positive integers
loop through numbers if the next matches the previous delete the next.
 return the count after deletions
*/

    func removeDuplicates(_ nums: inout [Int]) -> Int {
        
        for (index,value) in nums.enumerated().reversed() {
           
            print(value)
            print(index)
            if index == nums.count - 1 {break}

                if value == nums[index + 1] {
                    nums.remove(at: index)
                }
        }
        return nums.count
    }

removeDuplicates(&nums)
