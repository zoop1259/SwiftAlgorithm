import Foundation

func 자릿수더하기(_ n:Int) -> Int
{
    return String(n).reduce(0, {$0+Int(String($1))!});
}
