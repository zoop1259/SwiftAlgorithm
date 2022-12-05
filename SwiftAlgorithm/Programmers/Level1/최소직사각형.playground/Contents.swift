import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    
let sizesSort = sizes.map{ $0.sorted(by: >)}

var zeroArr = [Int]()
var oneArr = [Int]()

for i in sizesSort {
    
    zeroArr.append(i[0])
    oneArr.append(i[1])
    
}
    return (zeroArr.max() ?? 0) * (oneArr.max() ?? 0)
}
