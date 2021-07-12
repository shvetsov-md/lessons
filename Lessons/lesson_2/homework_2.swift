

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



//Задание 3, 4

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



