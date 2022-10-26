import UIKit


struct CountBit {
    // 方法 1: O(nk)
    func countBits1(num: Int) -> [Int] {

        var result = Array(repeating: 0, count: num + 1)
        for i in 0...num {
            var j = i
            while j != 0 {
                result[i] += 1
                j = j & (j - 1)
            }
        }
        return result
    }

    // 方法 2: O(n)
    func countBits2(num: Int) -> [Int] {
        var result = Array(repeating: 0, count: num + 1)
        for i in 1...num {
            result[i] = result[i & (i - 1)] + 1
        }
        return result
    }

    // 方法 3: O(n)
    func countBits3(num: Int) -> [Int] {
        var result = Array(repeating: 0, count: num + 1)
        for i in 1...num {
            result[i] = result[i >> 1] + (1 & 1)
        }
        return result
    }
}

let countBit = CountBit()
let result1 = countBit.countBits1(num: 4)
let result2 = countBit.countBits2(num: 4)
let result3 = countBit.countBits3(num: 4)








