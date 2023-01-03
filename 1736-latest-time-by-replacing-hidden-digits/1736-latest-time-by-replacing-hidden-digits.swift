class Solution {

    func maximumTime(_ time: String) -> String {
    
    var timeArr = time.map { String($0) }
    
    if timeArr[0] == "?" {
        
        switch timeArr[1] {
        case "?", "0", "1", "2", "3":
            timeArr[0] = "2"
        default:
            timeArr[0] = "1"
        }
    }
    
    if timeArr[1] == "?" {
        
        switch timeArr[0] {
        case "?", "2":
            timeArr[1] = "3"
        default:
            timeArr[1] = "9"
        }
    }
    
    if timeArr[3] == "?" { timeArr[3] = "5" }
    if timeArr[4] == "?" { timeArr[4] = "9" }
    
    return timeArr.joined()
}
}