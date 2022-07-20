/*
 문제 설명
 정수를 담고 있는 배열 arr의 평균값을 return하는 함수, solution을 완성해보세요.

 제한사항
 arr은 길이 1 이상, 100 이하인 배열입니다.
 arr의 원소는 -10,000 이상 10,000 이하인 정수입니다.
 입출력 예
 arr    return
 [1,2,3,4]    2.5
 [5,5]    5
 */

import Foundation

func 평균구하기(_ arr:[Int]) -> Double {
    
    var sum = 0
    
    for numbers in arr {
        sum += numbers
    }
    
    
    /*
    let a = [1,2,3,4]
    var sum = 0
    print(a.count)

    for i in a {
        sum += i
    }

    print(sum)

    //마무리를 더블로하면 2.0가 나온다... 나눈다음에 double화 시키니까... 2에다가 .0이...
    //let answer = Double(sum / a.count)
    */

    let answer = Double(sum) / Double(arr.count)

    
    
    
    print(answer)
    
    return answer
}
