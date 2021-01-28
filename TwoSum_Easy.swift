class Solution {
    
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    for i1 in 0..<nums.count {
        for i2 in 0..<nums.count {
            if i1 != i2 && nums[i1] + nums[i2] == target {
                return [i1, i2]
            }
        }
    }
    return nums
}
}

var a = Solution()
print(a.twoSum([2,7,11,15], 9))
