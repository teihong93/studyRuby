## 루비의 함수 선언법
# 루비는 기본적으로 def 예약어를 사용하여 함수를 정의함

def my_first_function(arg)
  "Hello " + arg
  #루비는 마지막으로 실행된 표현식의 결과값을 리턴함.
end

puts my_first_function("world")
#=> Hello world

## 루비의 표현식 보간
# 루비는 #{}를 통해 표현식보간을 사용할 수 있다.

def my_first_expression(arg)
  "Hello #{arg.capitalize}"
end

puts my_first_expression("world")
#=> Hello World

## 루비의 배열과 해시
# 루비의 배열/해시는 타입에 무관하게 저장할 수 있다
# 또한 메모리 공간을 알아서 할당,해제한다.

# 리터럴 방식의 배열 선언
my_first_array = ["this","is","my","first","ruby","array"]
# 단축 문법을 사용한 배열 선언
shortened_array = %w{this is my first ruby array}

print my_first_array
print shortened_array
#=> 결과는 ["this", "is", "my", "first", "ruby", "array"] 로 동일.

# 해시의 선언
my_first_hash = {
    'name' => 'tei',
    'language' => 'ruby',
    'level' => 'low'
}

puts my_first_hash['name']
#=> tei

p my_first_hash['address']
#=> nil
# 없는 key 참조시 nil. nil 은 falsy 한 값임을 유의.
# p 는 nil 도 명시적으로 출력하는 출력문

## Symbol 은 유일한 값이 보장되는 상수.
# 루비가 알아서 유일한 값을 할당해 줌
# 이 값은 루비의 어디에서 사용해도 동일한 값임이 보장.
# 선언 방법은 :symbolName 임.

my_first_symbol_hash = {
    :name => 'tei',
    :language => 'ruby',
    :level => 'low'
}
# 또한 키가 심볼인 경우 단축표현이 가능하다
my_first_shortened_hash = {
    name:'tei',
    language: 'ruby',
    level:'low'
}

puts my_first_symbol_hash[:name]
#=> tei

## 루비의 제어문은 기본적으로 if/elsif/else while 으로
# 이루어져 있다.

my_name = "tei"
if my_name == "tei"
  puts "my name is tei"
elsif my_name == "jay"
  puts "my name is jay"
else
  puts "wrong Name"
end

## 블록과 반복자
# 코드 블럭은 메서드 호출과 결합할 수 있는 코드
# do 와 end 로 묶어서 선언한다.
# 중괄호를 통해서도 선언 가능하다 {puts "codeBlock"}
# 코드 블록은 마치 코루틴처럼 동작하는데, 대표적인 예제는 아래와 같다.

def who_says_what
  yield("tei","hello")
  yield("jay","hello")
end

who_says_what {|person,what| puts "#{person} says #{what}"}
#=> tei says hello (...)

# js 의 forEach 와 유사하게 이터레이션 시킬수도 있다
["tei","says","hello","to","jay"].each { |elem| print elem+" " }
#=> tei says hello to jay


