/*:
 Найти 2 элемента в массиве, чья сумма равна заданной.
 Элементы вернуть в массиве.
 Если таковых нет, вернуть пустой массив.
 */
// Solution 1

func twoNumberSum(_ array: inout [Int], _ targetSum: Int) -> [Int] {
    var startIndex = 0
    var endIndex = array.count - 1
    
    array = array.sorted()

    for _ in array.indices {
        let sumOfNumbers = array[startIndex] + array[endIndex]
        
        if sumOfNumbers == targetSum {
            return [array[startIndex], array[endIndex]]
        } else if sumOfNumbers < targetSum {
            startIndex += 1
        } else {
            endIndex -= 1
        }
    }
    
    return []
}

var numbers: [Int] = [5, 10, -5, -1, 0] // -5 -1 5 10

twoNumberSum(&numbers, 7)

