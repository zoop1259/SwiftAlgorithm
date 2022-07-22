import Foundation

func 정수제곱근판별(_ n:Int64) -> Int64 {

    //나의 답...
    let a = sqrt(Double(n))
    let inta = Int(a)
    let aa = a - Double(inta)
    
    if aa > 0 {
        return -1
    } else {
        return Int64((inta+1)*(inta+1))
    }
    
    //맘에드는 답.
    //왜냐하면 나는 Foundation을 import해야하기 때문이다..
//    if(n == 1)
//    {
//        return 4
//    }
//
//    for i in 1..<n
//    {
//        if(n == i * i)
//        {
//            return (i + 1) * (i + 1)
//        }
//    }
//    return -1
}
