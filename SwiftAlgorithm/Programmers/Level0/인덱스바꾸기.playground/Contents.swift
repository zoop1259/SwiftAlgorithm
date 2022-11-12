import Foundation

func solution(_ my_string:String, _ num1:Int, _ num2:Int) -> String {
    
    var arr = Array(my_string)
    var num1Str = arr[num1]
    var num2Str = arr[num2]

    arr[num1] = num2Str
    arr[num2] = num1Str
    
    return String(arr)
}

//swap 함수 사용
func solution2(_ myString: String, _ num1: Int, _ num2: Int) -> String {
    var array = ArraySlice(myString)

    array.swapAt(num1, num2)
    return array.map { String($0) }.joined()
}
