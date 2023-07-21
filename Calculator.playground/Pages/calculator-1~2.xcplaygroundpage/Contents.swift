
//1~2 단계
class Calculator {
    func add(a: Int, b: Int) -> Int {
        return a + b
    }
    func minus(a: Int, b: Int) -> Int {
        return a - b
    }
    func times(a: Int, b: Int) -> Int {
        return a * b
    }
    func divide(a: Int, b: Int) -> Int {
        return a / b
    }
    func rest(a: Int, b: Int) -> Int {
        return a % b
    }
}

let calculator = Calculator()

let addResult = calculator.add(a: 1, b: 1)
print("더하면 \(addResult)")

let minusResult = calculator.minus(a: 1, b: 1)
print("빼면 \(minusResult)")

let timesResult = calculator.times(a: 1, b: 1)
print("곱하면 \(timesResult)")

let divResult = calculator.divide(a: 1, b: 1)
print("나누면 \(divResult)")

let restResult = calculator.rest(a: 1, b: 1)
print("나눈 나머지는 \(restResult)")


