class Solution {
    func countStudents(_ students: [Int], _ sandwiches: [Int]) -> Int {
        var studentList = students
        var sandwichList = sandwiches

        var remain = students.count
        var rollCount = 0

        while true {
            if studentList[0] == sandwichList[0] {
                rollCount = 0
                pickSandwich(&studentList, &sandwichList)
                remain -= 1
            } else {
                rollStudents(&studentList)
                rollCount += 1
            }

            if remain == 0 || rollCount > remain { return remain } // 탈출조건
        }
    }

    func pickSandwich(_ studentList: inout [Int], _ sandwichList: inout [Int]) { // 상쇄
        studentList.remove(at: 0)
        sandwichList.remove(at: 0)
    }

    func rollStudents(_ studentList: inout [Int]) { // 돌림
        studentList.append(studentList[0])
        studentList.remove(at: 0)
    }
}