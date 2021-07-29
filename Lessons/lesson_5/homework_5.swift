import Foundation

enum ActionEngine {
    case start, stop
}

enum ActionWindows {
    case open, close
    
}

protocol Car: AnyObject {
    var brand: String {get}
    var years: String {get}
    var engine: ActionEngine {get set}
    var window: ActionWindows {get set}
}

extension Car {
    func actionEngine(_actionCars: ActionEngine) {
        switch _actionCars {
        case .start:
            print("Запустить двигатель")
            self .engine = .start
        case .stop:
            print("Заглушить двигатель")
            self .engine = .stop
        }
    }
    
    func actionWindow(_actionCars: ActionWindows) {
        switch _actionCars {
        case .open:
            self .window = .open
            print("Открыть окно")
        case .close:
            self .window = .close
            print("Закрыть окно")
        }
    }
}


class SportCar: Car {
    var brand: String
    var years: String
    var engine: ActionEngine
    var window: ActionWindows
    var maxSpeed: Int
    
    init(brand: String, years: String, engine: ActionEngine, window: ActionWindows, maxSpeed: Int) {
        self .brand = brand
        self .years = years
        self .engine = engine
        self .window = window
        self .maxSpeed = maxSpeed
    }
}

class TruncCar: Car {
var brand: String
var years: String
var engine: ActionEngine
var window: ActionWindows
var maxWeight: Int

init(brand: String, years: String, engine: ActionEngine, window: ActionWindows, maxWeight: Int) {
    self .brand = brand
    self .years = years
    self .engine = engine
    self .window = window
    self .maxWeight = maxWeight
}
}

extension SportCar: CustomStringConvertible {
    var description: String {
        if (engine == .start){
            switch window {
            case .open:
                return "Модель \(brand) \(years) года выпуска с максимальной скоростью \(maxSpeed) км/час, с запущенным двигателем и открытыми окнами"
            case .close:
                return "Модель \(brand) \(years) года выпуска с максимальной скоростью \(maxSpeed) км/час, с запущенным двигателем и закрытыми окнами"
            }
        }
        else if (engine == .stop) {
            switch window {
            case .open:
                return "Модель \(brand) \(years) года выпуска с максимальной скоростью \(maxSpeed) км/час, с заглушенным двигателем и открытыми окнами"
            case .close:
                return "Модель \(brand) \(years) года выпуска с максимальной скоростью \(maxSpeed) км/час, с заглушенным двигателем и закрытыми окнами"
            }
        }
        else {
            return "Модель \(brand) \(years) года выпуска с максимальной скоростью \(maxSpeed) км/час"
        }
    }
}

extension TruncCar: CustomStringConvertible {
    var description: String {
        if (engine == .start){
            switch window {
            case .open:
                return "Модель \(brand) \(years) года выпуска с максимальной грузоподъемностью \(maxWeight) тонн, с запущенным двигателем и открытыми окнами"
            case .close:
                return "Модель \(brand) \(years) года выпуска с максимальной грузоподъемностью \(maxWeight) тонн, с запущенным двигателем и закрытыми окнами"
            }
        }
        else if (engine == .stop) {
            switch window {
            case .open:
                return "Модель \(brand) \(years) года выпуска с максимальной грузоподъемностью \(maxWeight) тонн, с заглушенным двигателем и открытыми окнами"
            case .close:
                return "Модель \(brand) \(years) года выпуска с максимальной грузоподъемностью \(maxWeight) тонн, с заглушенным двигателем и закрытыми окнами"
            }
        }
        else {
            return "Модель \(brand) \(years) года выпуска с максимальной грузоподъемностью \(maxWeight) тонн"
        }
    }
}

var sportCar = SportCar(brand: "Lamborghini", years: "2020", engine: .start, window: .close, maxSpeed: 340)
var trunckCar = TruncCar(brand: "Kamaz", years: "2010", engine: .stop, window: .open, maxWeight: 7)

func homework_5() {
       
    print(sportCar)
    sportCar.actionEngine(_actionCars: .stop)
    sportCar.actionWindow(_actionCars: .open)
    print(sportCar)
    print("\n")
    print(trunckCar)
    trunckCar.actionEngine(_actionCars: .start)
    trunckCar.actionWindow(_actionCars: .close)
    print(trunckCar)
    print("\n")
}
