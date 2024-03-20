
import Foundation

// 조건에 거짓이 될 때까지 반복
// So~ 언제 멈출지 모르기 때문에 두 종류의 while 반복문이 있음
// while -
// repeat-while -

// 무한루프의 위험이 있음
// 유연하고 간결하기 때문에 사용한다는데 아직 잘 모르겠음..
// 네트워크 통신? 사용자 입력 대기? 리소스 모니터링?

// 10부터 1까지 카운트다운하는 예제
var countdown = 10
while countdown > 0 {
    print(countdown)
    countdown -= 1 // countdown 값을 1씩 감소
}
print("Launch!")


// 사용자의 입력을 받아 "exit" 입력시까지 반복
var userInput = ""
while userInput != "exit" {
    print("Enter 'exit' to stop: ", terminator: "")
    userInput = readLine() ?? ""
}

