import Foundation

func homework_1_3(sum: Double, percent: Double, year: Double) {
   
    var oneYear = 1 + percent/100
    
    var T = sum * pow(oneYear, year)  // cумма вклада через указанное количество лет
    
    print ("Сумма вклада через \(Int(year)) лет: \(String(format: "%.2f", T))")
}
