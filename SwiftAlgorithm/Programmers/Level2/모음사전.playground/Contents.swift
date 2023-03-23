import Foundation

let vowelsDic = ["A":0,"E":1,"I":2,"O":3,"U":4]
let count = [781,156,31,6,1]

func solution(_ word:String) -> Int {
    let vowelsDic = ["A":0,"E":1,"I":2,"O":3,"U":4]
    let count = [781,156,31,6,1]

    return word.enumerated().map{count[$0.offset]*vowelsDic[String($0.element)]!}.reduce(word.count) {$0 + $1}
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

/*
 //아래코드는 dfs인데 완전탐색이라 시간이 많이 걸린다.
 var wordDict = [String:Int]()
 var count = 0

 func solution(_ word:String) -> Int {
     DFS(wordLetters: [])
     return wordDict[word]!
 }

 func DFS(wordLetters: [String]) {
     let word = wordLetters.joined()
     wordDict[word] = count
     
     if wordLetters.count == 5 {
         return
     } else {
         let letters = ["A", "E", "I", "O", "U"]
         for letter in letters {
             count += 1
             DFS(wordLetters: wordLetters + [letter])
         }
     }
 }
 */
