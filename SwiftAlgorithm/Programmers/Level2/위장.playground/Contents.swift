import Foundation

func solution(_ clothes:[[String]]) -> Int {

    /* 중복된 이름의 옷이 없다고 했기 떄문에 그냥 인트형으로 하자.
    var dic = [String:[String]]()
    //이렇게 for문 한방에 빈값과 그값을 넣을 수 있다.
    for i in clothes {
        if dic[i[1]] == nil {
            dic[i[1]] = [String]() //key값에 빈 value생성
        }
        dic[i[1]]!.append(i[0]) //value append
    }
    print(dic)
    */
     
    var dic = [String: Int]()
    for i in clothes {
        if dic[i[1]] == nil {
            dic[i[1]] = 0
        }
        dic[i[1]]! += 1
    }
    print(dic)
    
    var count = 1
    for i in dic {
        count *= i.value + 1
    }
    
    return count - 1
}

solution([["yellow_hat", "headgear"], ["blue_sunglasses", "eyewear"], ["green_turban", "headgear"]])

/* 아래처럼하면 for문을 2번 돌리기 때문에 시간복잡도에서 불리하다.
 func solution(_ clothes:[[String]]) -> Int {

 //    var dic = [String:String]()  //그냥 string으로 선언했기 때문에 "yellow_hatgreen_turban"가 된것이다.
     var dic = [String:[String]]()
     for i in clothes {
 //        dic[i[1]] = "" //value를 배열로 변경했기떄문에 안된다.
         dic[i[1]] = []
     }
     
     for i in clothes {
         dic[i[1]]!.append(i[0])
     }
     
     print(dic)
     
     return 0
 }
 */

/*
 1 a
 2 ab
 3 a 이렇게되면 12가지가 나오네..
 
 상의에 착용할 수 있는 옷이 2벌, 하의에 착용할 수 있는 옷이 3벌인 경우를 가정해보자.
 상의에 착용할 수 있는 경우의 수는 가지고 있는 2벌 또는 입지 않는 경우이므로 총 3가지다.
 하의는 가지고 있는 3벌을 입거나 입지 않는 경우로 총 4가지다.
 상의와 하의의 조합을 따져보면 총 3x4 = 12가지이다.
 하지만 아예 아무것도 입지 않는 경우는 없다고 했으므로 모든 조합의 경우의 수에서 1가지만 빼주면 된다.
 => 즉 공식을 세워보자면 각 종류별로 (가지고 있는 옷의 개수 + 1)을 모두 곱한 뒤 1을 빼주면 된다.
 
 
 
 */
