//
//  짝수와홀수.swift
//  SwiftAlgorithm
//
//  Created by 강대민 on 2022/07/21.
//

import Foundation

func 짝수와홀수(_ num:Int) -> String {
    
    if num % 2 == 0 {
        return "Even"
    } else if num == 0 {
        return "Even"
    } else {
        return "Odd"
    }
}
