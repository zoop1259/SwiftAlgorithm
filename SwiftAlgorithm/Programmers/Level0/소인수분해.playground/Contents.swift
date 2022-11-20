import UIKit

var n = 420
var div = 2
var arr = [Int]()

while n != 0 {
        
    if n % div == 0 {
        n = n / div
        arr.append(div)
    } else {
        div += 1
        
        n / div
        
    }
    
    
    
}

print(arr)

print(n % div)
