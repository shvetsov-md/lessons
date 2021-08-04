import Foundation




func homework_7() {
    
    enum CarControl: Error {
        case speedError
        case trunckError(_ volumeTrunck: Int)
        case noCar
    }
    
    
    struct CarProperty {
        var volumeTrunck: Int  //Общий объем багажника
        var maxSpeed: Int
    }
    
    
    class autopark {
        var cars = [
            "Hyundai": CarProperty(volumeTrunck: 370, maxSpeed: 160),
            "Volkswagen": CarProperty(volumeTrunck: 400, maxSpeed: 180),
            "Lamborghini": CarProperty(volumeTrunck: 150, maxSpeed: 320)
        ]
        
        var addTrunck = 0
        var speed = 0
        
        
        func errors(name: String) throws {
            guard let car = cars[name] else {
                throw CarControl.noCar
            }
            
            guard car.maxSpeed > speed else {
                throw CarControl.speedError
            }
            
            guard car.volumeTrunck > addTrunck else {
                throw CarControl.trunckError(addTrunck)
            }
            
            print("Модель с заполненным багажником: \(addTrunck) л, максимальной скоростью: \(car.maxSpeed) км/час")
        }
    }
    
    let numberCar = [
        "а777аа" : "Hyundai",
        "б888бб" : "Volkswagen",
        "г111гг" : "Lamborghini"
    ]
    
    func rent (number: String, cars: autopark) throws {
        let rentCar = numberCar[number] ?? "Porsche"
        try cars.errors(name: rentCar)
        
    }
    
    let rentCar = autopark()
    rentCar.addTrunck = 500
    rentCar.speed = 220
    
    
    do {
        try rent(number: "г111гг", cars: rentCar)
    } catch CarControl.noCar {
        print("Нет машины")
    } catch CarControl.speedError {
        print("Максимальная скорость ниже указанной \(rentCar.speed) км/час")
    } catch CarControl.trunckError(rentCar.addTrunck) {
        print("Объем багажника меньше указанного объема \(rentCar.addTrunck) л")
    }
    catch {
        print("Ошибка обоработки данных")
    }
}
