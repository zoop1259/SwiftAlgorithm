import Foundation

func solution(_ dots:[[Int]]) -> Int {

   
    if dots[0] == dots[1] || dots[0] == dots[2] || dots[0] == dots[3] || dots[1] == dots[2] || dots[1] == dots[3] || dots[2] == dots[3] {
        return 1
    }
   
    var answer = 0
    let x1 = Double(dots[0][0]), y1 = Double(dots[0][1])
    let x2 = Double(dots[1][0]), y2 = Double(dots[1][1])
    let x3 = Double(dots[2][0]), y3 = Double(dots[2][1])
    let x4 = Double(dots[3][0]), y4 = Double(dots[3][1])

    if (y1 - y2) != 0 && (y3 - y4) != 0 {
        if (x1 - x2) / (y1 - y2) == (x3 - x4) / (y3 - y4) {
            answer = 1
            return answer
        }
    }

    if (y1 - y3) != 0 && (y2 - y4) != 0 {
        if (x1 - x3) / (y1 - y3) == (x2 - x4) / (y2 - y4) {
            answer = 1
            return answer
        }
    }

    if (y1 - y4) != 0 && (y3 - y2) != 0 {
        if (x1 - x4) / (y1 - y4) == (x3 - x2) / (y3 - y2) {
            answer = 1
            return answer
        }
    }
   
    if (y1 - y2) == 0 && (y3 - y4) == 0 {
        answer = 1
        return answer
    }
    if (y1 - y3) == 0 && (y2 - y4) == 0 {
        answer = 1
        return answer
    }
    if (y1 - y4) == 0 && (y3 - y2) == 0 {
        answer = 1
        return answer
    }

   
    //let px = (x1 * y2 - y1 * x2) * (x3 - x4) - (x1 - x2) * (x3 * y4 - y3 * x4)
    //let py = (x1 * y2 - y1 * x2) * (y3 - y4) - (y1 - y2) * (x3 * y4 - y3 * x4)
    //let p = (x1 - x2) * (y3 - y4) - (y1 - y2) * (x3 - x4)
   
   
   
    //평행
   //if round(p) == 0 {
     ///   return 1
    //}
   
    return answer
}
