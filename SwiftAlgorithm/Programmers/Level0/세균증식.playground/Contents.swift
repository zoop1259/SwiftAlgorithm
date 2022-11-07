import Foundation

func solution(_ n:Int, _ t:Int) -> Int {
    guard n >= 1 , n <= 10 else { return -9999}
    guard t >= 1 , t <= 15 else { return -9999}
        
    return Int(pow(Double(t), 2)) * n
}


let n = 2
let t = 10

//그래서 Double형으로 하는 이유는
print(Int(pow(Double(2), Double(t))) * n)
//아래처럼 연산하면 결과값이 Decimal형태라 형변환이 불가능해진다.
let decimal = pow(Decimal(t), 2)
//let decimal = pow(Decimal(t), 2) * n  //error decimal형태라 n의 곱이 불가능해짐.
//앞의 연산값이 Decimal 타입이 아니면 에러가 발생한다.
//let decimal2 = pow(2, Decimal(t)) * 2 //이렇게 바뀌면 error 발생 //No exact matches in call to global function 'pow'
//앞뒤가 바뀌어도 연산이 정확하면 된다.
let decimal2 = pow(Decimal(t), 2) * Decimal(n)
let decimal3 = pow(Decimal(2), t) * Decimal(n)


print(decimal, decimal2, decimal3)
let a = Int(pow(Double(n), Double(t+1)))


