import UIKit

func gcd(_ a: Int, _ b: Int) -> Int{
    if (b == 0) { return a }
    return gcd(b, a % b)
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
}

let denum1 = 9//1
let num1 = 2//2
let denum2 = 1//3
let num2 = 3//4

let denums = (denum1 * num2) + (denum2 * num1)
print(denums)
let nums = num1 * num2

var arr = [Int]()
arr.append(denums / gcd(denums, nums))
arr.append(nums   / gcd(denums, nums))

print(arr)

/*
var mul = num1 * num2
var gcd1 = gcd(num1, num2)

var lcm1 = Double(mul) / Double(gcd1)

var mul1 = Double(denum1) * (lcm1 / Double(num1))
var mul2 = Double(denum2) * (lcm1 / Double(num2))

let intMul = Int(mul1) + Int(mul2)
let intlcm = Int(lcm1)

var arr = [intMul, intlcm]
print(arr)
 */






//1 / 2 + 3 / 4 = 5 / 4입니다. 따라서 [5, 4]를 return 합니다.

