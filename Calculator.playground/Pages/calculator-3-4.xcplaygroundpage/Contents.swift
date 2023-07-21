//3~4 단계

//부모와 자식 class
class AbstractOperation {
    func operate(num1: Double, num2: Double) -> Double {
        return 0.0
    }
}

class AddOperation: AbstractOperation {
    override func operate(num1: Double, num2: Double) -> Double {
        return num1 + num2
    }
}

class SubtractOperation: AbstractOperation {
    override func operate(num1: Double, num2: Double) -> Double {
        return num1 - num2
    }
}

class MultiplyOperation: AbstractOperation {
    override func operate(num1: Double, num2: Double) -> Double {
        return num1 * num2
    }
}

class DivideOperation: AbstractOperation {
    override func operate(num1: Double, num2: Double) -> Double {
        if num2 == 0 {
            return Double.nan
        }
        return num1 / num2
    }
}

//Calculator class
class Calculator {
     let addOperation = AddOperation()
     let subtractOperation = SubtractOperation()
     let multiplyOperation = MultiplyOperation()
     let divideOperation = DivideOperation()

    func add(num1: Double, num2: Double) -> Double {
        return addOperation.operate(num1: num1, num2: num2)
    }

    func subtract(num1: Double, num2: Double) -> Double {
        return subtractOperation.operate(num1: num1, num2: num2)
    }

    func multiply(num1: Double, num2: Double) -> Double {
        return multiplyOperation.operate(num1: num1, num2: num2)
    }

    func divide(num1: Double, num2: Double) -> Double {
        return divideOperation.operate(num1: num1, num2: num2)
    }
}

//main
let calculator = Calculator()
let result1 = calculator.add(num1: 10, num2: 5)
let result2 = calculator.subtract(num1: 10, num2: 5)
let result3 = calculator.multiply(num1: 10, num2: 5)
let result4 = calculator.divide(num1: 10, num2: 0)

print("더하면: \(result1)")
print("빼면: \(result2)")
print("곱하면: \(result3)")
print("나누면: \(result4)")

//3단계를 팀원들과 공유하고 4단계까지 했습니다.
