import UIKit

var str = "asas"

if str.contains("sa") {
    print("ASdasd")
}

//"aya", "ye", "woo", "ma"
//var babbling = ["ayaye", "uuu", "yeye", "yemawoo", "ayaayaa"]
var babbling = ["aya", "yee", "u", "maa"]

var a = babbling

for i in 0..<babbling.count {
    
    //배열 순회하면서 있는지 검사 후 숫자append
    a[i] = a[i].replacingOccurrences(of: "aya", with: "1")
    a[i] = a[i].replacingOccurrences(of: "ye", with: "2")
    a[i] = a[i].replacingOccurrences(of: "woo", with: "3")
    a[i] = a[i].replacingOccurrences(of: "ma", with: "4")
    
}

print(a)

var intA = [String]()
for i in 0..<a.count {
    //숫자만있으면 옹알이 완료.
    Int(a[i]) != nil ? intA.append(a[i]) : print("아니")
}
print(intA)

var count = 0
for i in intA {
    //하지만 추가된 조건에 의해 똑같은 말을 반복했을시에 count추가에서 제외.
    if i.contains("11") {} else if i.contains("22") {} else if i.contains("33") {} else if i.contains("44") {}
    else {
        count += 1
    }
    
}

print(count)


//한줄코딩
func solution(_ babbling: [String]) -> Int {
    return babbling.filter { $0.range(of: "^(aya(?!aya)|ye(?!ye)|woo(?!woo)|ma(?!ma))+$", options: .regularExpression) != nil }.count
}

//좀 더 간결한 코드
func solution2(_ babbling:[String]) -> Int {
    let strArr = ["aya", "ye", "woo", "ma"]

    var answer = 0
    func checkWord(_ str: String) -> Bool {
        var b = str

        for s in strArr {
            b = b.replacingOccurrences(of: s, with: "-")
            if b.contains("--") { return false }
            b = b.replacingOccurrences(of: "-", with: " ")

        }

        return b.replacingOccurrences(of: " ", with: "").isEmpty
    }

    for babble in babbling {
        if checkWord(babble) {
            answer += 1
        }
    }

    return answer
}
