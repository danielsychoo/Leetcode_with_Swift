class Solution {
    func validateStackSequences(_ pushed: [Int], _ popped: [Int]) -> Bool {
        var stack: [Int] = []
        var poppedIndex = 0

        for pushedItem in pushed {
            if pushedItem == popped[poppedIndex] {
                poppedIndex += 1
            } else {
                stack.append(pushedItem)
            }

            var canPop = stack.count != 0
                ? stack[stack.count - 1] == popped[poppedIndex]
                : false

            while canPop {
                stack.remove(at: stack.count - 1)
                poppedIndex += 1
                canPop = stack.count != 0
                    ? stack[stack.count - 1] == popped[poppedIndex]
                    : false
            }
        }

        return stack.isEmpty ? true : false
    }
}