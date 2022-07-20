import Foundation

/*
 
 문제 설명
 양의 정수 x가 하샤드 수이려면 x의 자릿수의 합으로 x가 나누어져야 합니다. 예를 들어 18의 자릿수 합은 1+8=9이고, 18은 9로 나누어 떨어지므로 18은 하샤드 수입니다. 자연수 x를 입력받아 x가 하샤드 수인지 아닌지 검사하는 함수, solution을 완성해주세요.

 제한 조건
 x는 1 이상, 10000 이하인 정수입니다.
 입출력 예
 arr    return
 10    true
 12    true
 11    false
 13    false
 입출력 예 설명
 입출력 예 #1
 10의 모든 자릿수의 합은 1입니다. 10은 1로 나누어 떨어지므로 10은 하샤드 수입니다.

 입출력 예 #2
 12의 모든 자릿수의 합은 3입니다. 12는 3으로 나누어 떨어지므로 12는 하샤드 수입니다.

 입출력 예 #3
 11의 모든 자릿수의 합은 2입니다. 11은 2로 나누어 떨어지지 않으므로 11는 하샤드 수가 아닙니다.

 입출력 예 #4
 13의 모든 자릿수의 합은 4입니다. 13은 4로 나누어 떨어지지 않으므로 13은 하샤드 수가 아닙니다.
 
 */

func 하샤드수(_ x:Int) -> Bool {

    let a = 12
    var sum = 0
    var answer: Bool
    //그냥 배열에 담기.
    let array = String(a).map { Int(String($0))!}

    //한방에 해결하기.
    //reduce(0) 의 의미는 '초기값이 0이다.'
    let sum2 = String(a).map { Int(String($0))!}.reduce(0) { $0 + $1 }
    print(sum2)

    //배열의 요소를 reduce없이 더하기.
    for i in array {
        sum += i
    }
    print(sum)

    //이건 몫구하기
    //if a / sum == 0 {
    //    return true
    //} else {
    //    return false
    //}

    //나머지가 0을 계산한다.
    if a % sum == 0 {
        answer = true
    } else {
        answer = false
    }

    print(answer)
    
    //이렇게 해도되고
    //return answer
    
    //리턴자체에서 계산해서 출력
    return x % sum2 == 0
}
