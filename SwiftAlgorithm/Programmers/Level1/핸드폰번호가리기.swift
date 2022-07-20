/*
 문제 설명
 프로그래머스 모바일은 개인정보 보호를 위해 고지서를 보낼 때 고객들의 전화번호의 일부를 가립니다.
 전화번호가 문자열 phone_number로 주어졌을 때, 전화번호의 뒷 4자리를 제외한 나머지 숫자를 전부 *으로 가린 문자열을 리턴하는 함수, solution을 완성해주세요.

 제한 조건
 phone_number는 길이 4 이상, 20이하인 문자열입니다.
 입출력 예
 phone_number    return
 "01033334444"    "*******4444"
 "027778888"    "*****8888"
 */


import Foundation

func 핸드폰번호가리기(_ phone_number:String) -> String {
    
    //let phone_number = "123-456-7890"

    let filter = phone_number.filter { $0.isNumber }
    //print(filter)

    //제거하고 남은 filter의 string길이를 잰다
    let filtersize = filter.count
    //print(filtersize)

    //길이 -4만큼의 숫자를 따로 만들어준다.
    let minusfilter = filtersize - 4
    //print(minusfilter)

    let firstnumber = filter.prefix(3)
    //print(he)
    let lastnumber = filter.suffix(4)
    print(lastnumber)

    let a = filter.index(filter.startIndex, offsetBy: minusfilter)
    let astr = String(filter[..<a])
    //print(astr)
    var prefilter = ""

    for i in 0..<minusfilter {
        prefilter += "*" //이게 필요했다...
    }
    print(prefilter)

    let finalFilter = prefilter + lastnumber
    print(finalFilter)

    return finalFilter
    
}

/*
 
 var phoneNumber = "010-9888-4321"
 var starSize = ""
 let filter = phoneNumber.filter { $0.isNumber }

 //뒤 숫자 4개
 let lastNumber = filter.suffix(4) //예제에선 4444

 //뒤 숫자 4개 제거한 값 찾기
 //    let filtersize = filter.count - 4 //첫예제라면 7

 for _ in 0..<filter.count - 4 {
      starSize += "*"
 }
//사실 여기서도
//for _ in 1...filter.count -4 로 했었었는데 4자리인 번호를 생각못하고 했기때문에 논리적 에러가 발생했던것. 무조건 *이 한개들어가게 되어있었다.
 
 
 
 
 if filter.count >= 4 {
     phoneNumber = starSize + lastNumber
 } else {
     phoneNumber = String(lastNumber)
 
 //사실 여기서
 //phoneNumber = lastNumber
 //이렇게 했었는데 lastNumber가 SubString이라 String으로 매핑하지 않으면 안되는걸 몰랐다.
 }


 
 */


/*
 고수들의 답
 
 func solution(_ phone_number:String) -> String {
     return String(repeating:"*", count:phone_number.count-4)+phone_number.suffix(4)
 }
 
 두번쨰 매핑을 활용한 고수의 답
 
 func solution(_ phone_number:String) -> String {
     guard phone_number.count > 4 else { return phone_number }
     return String(phone_number.enumerated().map{($0.offset<phone_number.count-4 ? Character("*") : $0.element)})
 }
 
 
 */
