import Foundation


func homework_3() -> () {
    
      
    enum ActionsCars {
        
        enum ActionEngine {
            case start
            case stop
        }
        
        enum Engine: String {
            case start = "Запустить двигатель"
            case stop = "Заглушить двигатель"
        }
        
        enum ActionWindows {
            case open
            case close
        }
        
        enum Windows: String {
            case open = "Открыть окно"
            case close = "Закрыть окно"
        }
        
        enum ActionTrunk {
            case load        //загрузука багажника
            case upload      //выгрузка багажника
        }
        
    }
    
    struct SportCar {
        var brand: String
        var years: String
        var volumeTrunck: Double  //Общий объем багажника
        var engine: ActionsCars.Engine
        var window: ActionsCars.Windows
        var fillVolumeTrunck: Double //Заполненный объем багажника
        
        mutating func actionEngine (action: ActionsCars.ActionEngine) {
            switch action {
            case .start:
                self .engine = .start
                print(engine.rawValue)
            case .stop:
                self .engine = .stop
                print(engine.rawValue)
            }
        }
        
        mutating func actionWindow (action: ActionsCars.ActionWindows) {
            switch action {
            case .open:
                self .window = .open
                print(window.rawValue)
            case .close:
                self .window = .close
                print(window.rawValue)
            }
        }
         
        mutating func editVolumeTrunck (action: ActionsCars.ActionTrunk, value: Double) {     //Изменение объема багажника
            
            switch action {
            case .load where fillVolumeTrunck + value <= volumeTrunck:
                self .fillVolumeTrunck += value
                print("Заполненный объем багажника: \(fillVolumeTrunck)")
            case .load where fillVolumeTrunck + value > volumeTrunck:
                print("Указанное значение не помещается в багажник")
            
            case .upload where fillVolumeTrunck >= value:
                self .fillVolumeTrunck -= value
                print("Заполненный объем багажника: \(fillVolumeTrunck)")
            case .upload where fillVolumeTrunck < value:
                print("Указанное значение превышает заполненный объем багажника")
            default:
            break
            }
        }
        
        func description() {
            print("Модель \(brand) \(years) года выпуска, с объемом багажника \(volumeTrunck)")
        }
        
    }
    
    struct TrunkCar {
        var brand: String
        var years: String
        var volumeTrunck: Double
        var engine: ActionsCars.Engine
        var window: ActionsCars.Windows
        var fillVolumeTrunck: Double
        
        mutating func actionEngine (action: ActionsCars.ActionEngine) {
            switch action {
            case .start:
                self .engine = .start
                print(engine.rawValue)
            case .stop:
                self .engine = .stop
                print(engine.rawValue)
            }
        }
        
        mutating func actionWindow (action: ActionsCars.ActionWindows) {
            switch action {
            case .open:
                self .window = .open
                print(window.rawValue)
            case .close:
                self .window = .close
                print(window.rawValue)
            }
        }
        
        mutating func editVolumeTrunck (action: ActionsCars.ActionTrunk, value: Double) {     //Изменение объема багажника
            
            switch action {
            case .load where fillVolumeTrunck + value <= volumeTrunck:
                self .fillVolumeTrunck += value
                print("Заполненный объем багажника: \(fillVolumeTrunck)")
            case .load where fillVolumeTrunck + value > volumeTrunck:
                print("Указанное значение не помещается в багажник")
            
            case .upload where fillVolumeTrunck >= value:
                self .fillVolumeTrunck -= value
                print("Заполненный объем багажника: \(fillVolumeTrunck)")
            case .upload where fillVolumeTrunck < value:
                print("Указанное значение превышает заполненный объем багажника")
            default:
            break
            }
        }
        
        func description() {
            print("Перед осмотром модели \(brand), необходимо \(engine.rawValue) и \(window.rawValue)")
        }
    }
    
    var spotCar_1 = SportCar(brand: "Hyundai", years: "2018", volumeTrunck: 370, engine: .start, window: .close, fillVolumeTrunck: 150)
    var spotCar_2 = SportCar(brand: "Volkswagen", years: "2016", volumeTrunck: 450, engine: .stop, window: .open, fillVolumeTrunck: 150)
    
    var trunckCar_1 = TrunkCar(brand: "Kamaz", years: "2010", volumeTrunck: 1500, engine: .start, window: .close, fillVolumeTrunck: 650)
    var trunckCar_2 = TrunkCar(brand: "Peterbilt", years: "2005", volumeTrunck: 1800, engine: .stop, window: .open, fillVolumeTrunck: 1050)
    
    //Запус/остановка двигателя
    print("Запус/остановка двигателя:")
    print(spotCar_1.brand, spotCar_1.years)
    spotCar_1.actionEngine(action: .start)
    print(spotCar_2.brand, spotCar_2.years)
    spotCar_2.actionEngine(action: .stop)
    print(trunckCar_1.brand, trunckCar_1.years)
    trunckCar_1.actionEngine(action: .stop)
    print(trunckCar_2.brand, trunckCar_2.years)
    trunckCar_2.actionEngine(action: .start)
    print("\n")
    
    //Открытие/закрытие окна
    print("Открытие/закрытие окна:")
    print(spotCar_1.brand, spotCar_1.years)
    spotCar_1.actionWindow(action: .close)
    print(spotCar_2.brand, spotCar_2.years)
    spotCar_2.actionWindow(action: .open)
    print(trunckCar_1.brand, trunckCar_1.years)
    trunckCar_1.actionWindow(action: .open)
    print(trunckCar_2.brand, trunckCar_2.years)
    trunckCar_2.actionWindow(action: .close)
    print("\n")
    
    //Загрузка/выгрузка багажника
    print("Загрузка/выгрузка багажника:")
    print(spotCar_1.brand, spotCar_1.years)
    spotCar_1.editVolumeTrunck(action: .load, value: 150)
    print(spotCar_2.brand, spotCar_2.years)
    spotCar_2.editVolumeTrunck(action: .upload, value: 200)
    print(trunckCar_1.brand, trunckCar_1.years)
    trunckCar_1.editVolumeTrunck(action: .load, value: 900)
    print(trunckCar_2.brand, trunckCar_2.years)
    trunckCar_2.editVolumeTrunck(action: .upload, value: 650)
    print("\n")
    
    //Описание
    print("Описание:")
    spotCar_1.description()
    spotCar_2.description()
    trunckCar_1.description()
    trunckCar_2.description()
    
}



