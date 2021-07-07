import Foundation


func homework_1_1() {
    print ("Введите значение a:")
    var field_a = readLine()
    print ("Введите значение b:")
    var field_b = readLine()
    print ("Введите значение c:")
    var field_c = readLine()
    print ("\n")
    
    var a: Double? = Double(field_a!)
    var b: Double? = Double(field_b!)
    var c: Double? = Double(field_c!)
    
    if (a != nil && b != nil && c != nil){
        print("Полученное квадратное уравнение: (\(a!))*Xˆ2 + (\(b!))*X + (\(c!)) = 0")
        
        var D = pow(b!, 2.0) - 4*a!*c!
        
        if (D > 0) {
            var X1 = (-b! + sqrt(D)) / (2*a!)
            var X2 = (-b! - sqrt(D)) / (2*a!)
            
            print("Корни уравнения: X1 = \(X1), X2 = \(X2)")
        }
        else if (D == 0){
            var X = (-b! + sqrt(D)) / (2*a!)
            
            print("Корень уравнения: X = \(X)")
        }
        else {
            print ("Нет корней уравнения")
        }
    }
    else {
        print ("Введите значение параметров a, b, c как число")
    }
    
    print ("\n")
}
