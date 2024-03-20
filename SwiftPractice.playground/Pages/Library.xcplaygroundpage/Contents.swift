
import Foundation

// 배열이나 숫자 범위에서 홀수 || 짝수를 찾는 방법


// 짝수
var evenNumbers: [Int] = []

for i in 1...10 where i % 2 == 0 {
    print(i) // 2, 4, 6, 8, 10 출력
    evenNumbers.append(i)
    print(evenNumbers)
}

var evenNumbers1: [Int] = []

for i in stride(from: 2, through: 10, by: 2) {
    print(i) // 2, 4, 6, 8, 10 출력
    evenNumbers1.append(i)
    print(evenNumbers1)
}

let evenNumbers2 = (1...10).filter { $0 % 2 == 0 }
print(evenNumbers2)
// [2, 4, 6, 8, 10] 배열로 출력


// 홀수
for i in 1...10 where i % 2 != 0 {
    print(i) // 1, 3, 5, 7, 9 출력
}

for i in stride(from: 1, through: 10, by: 2) {
    print(i) // 1, 3, 5, 7, 9 출력
}

let oddNumbers = (1...10).filter { $0 % 2 != 0 }
print(oddNumbers)
// [1, 3, 5, 7, 9] 배열로 출력. 고차함수 최고!!!

// stride는 조건에 따른 추가 계산이 필요 없기 때문에 메모리 사용 측면에서 효율적이고, 실행 속도도 빠르다.

// .filter는 코드가 간결하고 읽기 쉽다. 조건 변경에 유연하게 대응할 수 있다.
// 단, 범위 내 조건의 모든 결과를 메모리에 저장하기 때문에 메모리 사용량이 증가할 수 있다.
