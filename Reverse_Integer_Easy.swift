class Solution {
    
    func reverse(_ x: Int) -> Int {
    
    var num: Int = x
    var isNegative: Bool = false
    
    // for negative number
    if num < 0
    {
        isNegative = true
        var tempStr = String(num)
        tempStr.remove(at: tempStr.startIndex)
        num = Int(tempStr)!
    }
    
    // to not make a number ends with 0
    while num % 10 == 0
    {
        if num == 0
        {
            break
        }
        num /= 10
    }
    
    // reverse number string
    let strNum = String(String(num).reversed())
        
    if !(-pow(2, 31) ... pow(2, 31) - 1).contains(Int(strNum)!)
    {
        return 0
    }
    else if isNegative
    {
        return -Int(strNum)!
    }
        
    return Int(strNum)!
        
    }

    func pow(_ base:Int, _ power:UInt) -> Int {
      var answer : Int = 1
      for _ in 0..<power { answer *= base }
      return answer
    }
    
}


// Test Cases:
var number = Solution()

print("The first number from 1234 to \(number.reverse(1234))")
print("The second number from 124123423 to \(number.reverse(124123423))")
print("The third number from 123 to \(number.reverse(123))")
print("The fourth number from -3345 to \(number.reverse(-3345))")
print("The fifth number from -475859 to \(number.reverse(-475859))")
print("The sixth number from -0 \(number.reverse(-0))")

