import Foundation

func solution(_ my_str:String, _ n:Int) -> [String] {

var b = my_str.map { String($0) }

var arr = [String]()

var newArr = [String]()

    if my_str.count <= n{ //쪼갤값이 더 크다면 그냥 리턴
        return([my_str])
    }

while b.count > n {
    for i in 0..<n {
        arr.append(b[i]) //배열에 저장하고
    }
    for j in 0..<n {
        b.removeFirst() //저장한만큼 제거해주고
    }
    newArr.append(arr.joined()) //저장한걸 join해서 더하고
    arr.removeAll() //arr를 비워준다.

    if b.count <= n { //만약 남은 값이 n보다 적거나 같다면 그냥 join해서 추가해버리기.
        newArr.append(b.joined())
    }
}
  return newArr
}

solution("abc1Addfggg4556b", 6)
