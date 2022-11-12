import UIKit

let box = [10, 8, 6]
let n = 3

let a = box[0] / 3
let b = box[1] / 3
let c = box[2] / 3

//명답
import Foundation

func solution(_ box:[Int], _ n:Int) -> Int {
    return Int(box[0] / n) * Int(box[1] / n) * Int(box[2] / n)
}

