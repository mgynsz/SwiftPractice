
import Foundation

/*
반복문
배열, 범위의 숫자, 문자열과 문자와 같이 연속된 것에 사용해서 반복할 수 있다.
*/

// 배열에서의 반복문 조건 X
let names = ["Anna", "Emily", "David", "Patrick", "Joy", "Henry", "Lena", "Sam"]

for name in names {
    print("Hello, \(name)")
}

// Hello, Anna
// Hello, Emily
// Hello, David
// Hello, Patrick
// Hello, Joy
// Hello, Henry
// Hello, Lena
// Hello, Sam


// 딕셔너리에서의 반복문 조건 X
let person = [
    "Anna": 28,
    "Emily": 26,
    "David": 43,
    "Patrick": 46,
    "Henry": 15,
    "Lena": 41,
    "Sam": 39
]

for profile in person {
    print(profile)      // (key: "Lena", value: 41) 튜플 형식으로 출력되고, 순서가 없음.
}

for (name, age) in person {
    print(name, age)    // David 43 -> Key, Value 없이 출력되고, 순서는 랜덤!
}


// 숫자 범위에서의 사용 -> 숫자...숫자 , 변수...변수, 숫자...변수 등 다양하게 활용
let num = 1...10

for i in num {
    print(i)            // 1,2,3,4..10
}

// 표준 라이브러리 stride 함수 -> 숫자 시퀀스를 생성할 때 사용
// from 부터 through 까지
for i in stride(from: 1, through: 10, by: 1) {
    print(i)            // 1,2,3,4..10 위 반복문과 동일
}
// from 부터 to 전 까지
for i in stride(from: 1, to: 10, by: 1) {
    print(i)            // 1,2,3,4..9
}

// protocol Strideable -> stride 활용

// 공식문서 예제 코드
for radians in stride(from: 0.0, to: .pi * 2, by: .pi / 2) {
    let degrees = Int(radians * 180 / .pi)
    print("Degrees: \(degrees), radians: \(radians)")
}
// Degrees: 0, radians: 0.0
// Degrees: 90, radians: 1.5707963267949
// Degrees: 180, radians: 3.14159265358979
// Degrees: 270, radians: 4.71238898038469


