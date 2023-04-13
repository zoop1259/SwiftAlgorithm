//
//  main.swift
//  SwiftAlgorithm
//
//  Created by 강대민 on 2022/07/19.
//

import Foundation


let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])

if a <= 1000 {
    if b <= 1000 {
        for _ in 1...b{
            for _ in 1...a{
                print("*",terminator:"")
            }
            print("")
        }
    }
}
