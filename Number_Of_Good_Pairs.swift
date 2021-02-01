class Solution {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var count: Int = 0
    
        for i in 0..<nums.count {
            for k in 0..<nums.count {
                if nums[i] == nums[k] && i < k {
                    count += 1
                }
            }
        }
    
        return count
    }
}

var a: Solution()
print(a.numIdenticalPairs)
