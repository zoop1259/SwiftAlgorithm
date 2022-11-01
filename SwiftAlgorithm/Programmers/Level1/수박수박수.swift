//
//  수박수박수.swift
//  SwiftAlgorithm
//
//  Created by 강대민 on 2022/08/01.
//

import Foundation

func 수박수박수(_ n:Int) -> String {
    var arr : [String] = []
    for i in 1...n {
        if i % 2 != 0 {
            arr.append("수")
        } else {
            arr.append("박")
        }
    }
    return arr.joined()
}
