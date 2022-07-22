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

//    let answer = Double(sum) / Double(arr.count)
//    print(answer)
//    return answer
    
    //위 방법으로했을때 값이 0인경우에 0으로 나누면 에러발생. 근데 사실 배열에 값이 들어가면 분모가 1이 돼서 에러날일이 없는데...
    var sum2 = arr.reduce(0, +)

    if (sum2 != 0), arr.count != 0 {
        return Double(sum2) / Double(arr.count)
    } else {
        return 0
    }
    
}
    
