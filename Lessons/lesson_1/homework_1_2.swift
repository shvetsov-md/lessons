import Foundation

func homework_1_2() {
    var a = 5     //катет a
    var b = 8     //катет b
    
    var c = sqrt(pow(Double(a), 2.0) + pow(Double(b), 2.0))  //гипотенуза с
    var S = (a*b)/2    //площадь треугольника
    var P = sqrt(pow(Double(a), 2.0) + pow(Double(b), 2.0)) + Double(a) + Double(b)  //периметр
    
    print ("Гипотенуза: \(c)")
    print ("Площадь: \(S)")
    print ("Периметр: \(P)")
}
