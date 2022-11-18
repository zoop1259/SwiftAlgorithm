import UIKit

let common = [1,2,3,4]

var add = 0
var re = 0
let count = common.count

if common[1] - common[0] == common[2] - common[1] {
    add = common[1] - common[0]
}

re = common[count - 1] + add

print(re)
