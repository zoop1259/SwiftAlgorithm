import UIKit

var a = 1234
var astring = String(a)
var sum = 0

for i in astring {
    sum += Int(String(i))!
    
}
print(sum)
