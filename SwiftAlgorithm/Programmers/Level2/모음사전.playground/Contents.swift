import Foundation


func solution(_ word:String) -> Int {
    let vowelsDic = ["A":0,"E":1,"I":2,"O":3,"U":4]
    let count = [781,156,31,6,1]

    return word.enumerated().map{countDic[$0.offset]*vowelsDic[String($0.element)]!}.reduce(word.count) { $0 + $1}
}

solution("AAAAI")

/*
 빈 문자열로 시작.
 ""
/   |   |   |   \
A    E   I   O   U
/|\   |   |   |   /|\
A E I  A E I A E I A E I
/|      |       |     |
A E I    A E I   A E I A E I
 
 A
 AA
 AAA
 AAAA
 AAAAA
 
 AAAAE
 AAAAI
 AAAAO
 AAAAU
 AAAE     10
 
 AAAEA
 AAAEE
 AAAEI
 AAAEO
 AAAEU
 
 AAAI     16
 AAAIA
 AAAIE
 AAAII
 AAAIO
 
 AAAIU
 AAAO     22
 AAAOA
 AAAOE
 AAAOI
 
 AAAOO
 AAAOU
 AAAU     28
 AAAUA
 AAAUE
 
 AAAUI
 AAAUO
 AAAUU
 AAE      34
 
 
 
 
 */
