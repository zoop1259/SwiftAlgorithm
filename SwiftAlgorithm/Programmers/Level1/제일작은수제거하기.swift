//
//  제일작은수제거하기.swift
//  SwiftAlgorithm
//
//  Created by 강대민 on 2022/07/21.
//

import Foundation

func 제일작은수제거하기(_ arr:[Int]) -> [Int] {
 
    //처음엔 정렬후 출력하는건줄 알고 이렇게 했다 ㅠㅠ...
    //let a = [1,3,2,4]
    let arr = [10]
    var b = arr.sorted(by: >)

    print(b)
    print(b.endIndex)

    if b[0] == 10 {
        print("-1")
    } else {
        b.removeLast()
        print(b)
    }


    // 최종 결과 배열을 저장할 배열 선언
    var result = arr

    // 최소값에 대한 값을 저장할 상수 선언
    let minValue = arr.min()!

    // 최소값을 가지고 있는 배열의 인덱스 값을 저장할 상수 선언
    let minIndex = arr.index(of: minValue)!

    // 결과 배열에서 최소값을 가지고 있는 배열의 인덱스를 제거
    result.remove(at: minIndex)

    // 최종 결과 배열이 비어있으면 [-1]을 반환, 그렇지 않으면 최종 경과 배열 반환
    return result.isEmpty ? [-1]: result

    
}
