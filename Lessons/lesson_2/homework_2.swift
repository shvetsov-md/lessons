

import Foundation


//Задание 1

func homework_2_1(chislo: Double) {
    if (floor(chislo) == chislo) && (Int(chislo) % 2 == 0) {
        print ("\(chislo): четное число")
    }
    else {
        print ("\(chislo): не четное число")
    }
}


//Задание 2

func homework_2_2(chislo: Double) {
    switch chislo {
    case _ where (floor(chislo) == chislo) && (Int(chislo) % 3 == 0):
        let result = chislo / 3
        print ("\(chislo) делится на три")
        print ("Результат: \(result)")
        
    default:
        print ("\(chislo) не делится на три без остатка")
    
    }
}



//Задание 3

func homework_2_3() -> [Int] {
    var numbers = [Int]()
    
    for i in 1...100 {
        numbers.append(i)
    }
    
    return numbers
}


//Задание 4

func homework_2_4(numbers: [Int]) -> [Int] {
    var i = 0
    var arrayResult = numbers
    
    while i < numbers.count {
        if (numbers[i] % 2 == 0) || (numbers[i] % 3 != 0) {
            arrayResult.removeAll(where:{ $0 == numbers[i] })
        }
        
        i += 1
    }
    
    return arrayResult
}


//Задание 5

func homework_2_5(_ count: Int) -> [Int] {
    var i = 0
    var fib = 0
    var array = [Int]()
    
    repeat {
        if (i < 2) {
            fib = i
        }
        else {
            fib = array[i - 1] + array[i - 2]
        }
        
        array.append(fib)
        
        i += 1
    } while i < count
    
    return array
}


//Задание 6

func homework_2_6(_ count: Int) {
    var p = 0
    var i = 0
    var array = [Int]()
    
    while array.count <= count {
        if (i > 1) {
            array.append(i)
            for j in array {
                if (i != j) && (i % j == 0) {
                    array.removeAll(where:{ $0 == i })
                    
                }
            }
        }
       i += 1
    }
    
    print("Массив из \(count) чисел, в котором все числа простые: \(array)")
    
    p = array.first!
    
    var min = p + array.first!
    
    repeat {
        
        while min <= array.last! {
            array.removeAll(where:{ $0 == min })
            
            min += p
        }
        
        for m in array {
            if (m > p) {
                p = m
                break
            }
        }
        
        min = p + array.first!
    } while min <= array.last!
    
    print("Результат обработки массива: \(array)")
   
}





