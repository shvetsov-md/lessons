import Foundation


func homework_4() {
    class Car {
        var brand: String
        var years: String
        var volumeTrunck: Double  //Общий объем багажника
        var engine: ActionsCars.Engine
        var window: ActionsCars.Windows
        var fillVolumeTrunck: Double  //Заполненный объем багажника
        
        enum ActionsCars {
            case startEngine
            case stopEngine
            case openWindow
            case closeWindow
            case openRoof
            case closeRoof
            case attachTrailer
            case detachTrailer
            enum Engine: String {
                case startEngine = "Запустить двигатель"
                case stopEngine = "Заглушить двигатель"
            }
            enum Windows: String {
                case openWindow = "Открыть окно"
                case closeWindow = "Закрыть окно"
            }
        }
        
        init(brand: String, years: String, volumeTrunck: Double, fillVolumeTrunck: Double, engine: ActionsCars.Engine, window: ActionsCars.Windows) {
            self .brand = brand
            self .years = years
            self .volumeTrunck = volumeTrunck
            self .fillVolumeTrunck = fillVolumeTrunck
            self .engine = engine
            self .window = window
        }
        
        func actionCar (action: ActionsCars) {
            
        }
        
        
        
    }
    
    class SportCar: Car {
        var maxSpeed: Int
        var roff: carRoff
        
        enum carRoff: String {
            case open = "С открытым верхом"
            case close = "С закрытым верхом"
        }
        
        
        init(brand: String, years: String, volumeTrunck: Double, fillVolumeTrunck: Double, engine: ActionsCars.Engine, window: ActionsCars.Windows, maxSpeed: Int, roff: carRoff) {
            self .maxSpeed = maxSpeed
            self .roff = roff
            super.init(brand: brand, years: years, volumeTrunck: volumeTrunck, fillVolumeTrunck: fillVolumeTrunck, engine: engine, window: window)
        }
        
        override func actionCar(action: ActionsCars) {
            switch action {
            case .startEngine:
                self .engine = .startEngine
               // print(engine.rawValue)
            case .stopEngine:
                self .engine = .stopEngine
              //  print(engine.rawValue)
                
            case .openWindow:
                self .window = .openWindow
              //  print(window.rawValue)
            case .closeWindow:
                self .window = .closeWindow
              //  print(window.rawValue)
            
            case .closeRoof:
                self .roff = .close
              //  print(roff.rawValue)
            case .openRoof:
                self .roff = .open
              //  print(roff.rawValue)
                
            default:
                break
            }
        }
        
        func desc(){
            print("Модель \(brand) \(years) года выпуска, c максимальной скоростью \(maxSpeed) км/час. \(engine.rawValue). \(window.rawValue). \(roff.rawValue)")
        }

    }
    
    class TrunckCar: Car {
        var maxWeight: Int
        var trailer: trailerType
        
        enum trailerType: String {
            case attach = "C прицепом"
            case detach = "Без прицепа"
        }
        
        init(brand: String, years: String, volumeTrunck: Double, fillVolumeTrunck: Double, engine: ActionsCars.Engine, window: ActionsCars.Windows, maxWeight: Int, trailer: trailerType) {
            self .maxWeight = maxWeight
            self .trailer = trailer
            super.init(brand: brand, years: years, volumeTrunck: volumeTrunck, fillVolumeTrunck: fillVolumeTrunck, engine: engine, window: window)
        }
        
        override func actionCar(action: ActionsCars) {
            switch action {
            
            case .startEngine:
                self .engine = .startEngine
               // print(engine.rawValue)
            case .stopEngine:
                self .engine = .stopEngine
               // print(engine.rawValue)
                
            case .openWindow:
                self .window = .openWindow
               // print(window.rawValue)
            case .closeWindow:
                self .window = .closeWindow
                //print(window.rawValue)
            
            case .attachTrailer:
                self .trailer = .attach
               // print(trailer.rawValue)
            case .detachTrailer:
                self .trailer = .detach
                //print(trailer.rawValue)
                
            default:
                break
            }
        }
        
        func desc(){
            print("Модель \(brand) \(years) года выпуска, c максимальной грузоподъемностью \(maxWeight) тонн. \(engine.rawValue). \(window.rawValue). \(trailer.rawValue)")
        }
        
    }
    
    
    var superCar1 = SportCar(brand: "Hyundai", years: "2018", volumeTrunck: 370, fillVolumeTrunck: 150, engine: .startEngine, window: .closeWindow, maxSpeed: 180, roff: .close)
    var superCar2 = SportCar(brand: "Volkswagen", years: "2016", volumeTrunck: 450, fillVolumeTrunck: 150, engine: .stopEngine, window: .openWindow, maxSpeed: 200, roff: .open)
    
    var trunckCar1 = TrunckCar(brand: "Kamaz", years: "2010", volumeTrunck: 1500, fillVolumeTrunck: 650, engine: .startEngine, window: .closeWindow, maxWeight: 5, trailer: .attach)
    var trunckCar2 = TrunckCar(brand: "Peterbilt", years: "2005", volumeTrunck: 1800, fillVolumeTrunck: 1050, engine: .stopEngine, window: .openWindow, maxWeight: 7, trailer: .detach)
    
    
    superCar1.desc()
    superCar1.actionCar(action: .stopEngine)
    superCar1.actionCar(action: .openWindow)
    superCar1.actionCar(action: .openRoof)
    superCar1.desc()
    print("\n")
    
    superCar2.desc()
    superCar2.actionCar(action: .startEngine)
    superCar2.actionCar(action: .closeWindow)
    superCar2.actionCar(action: .closeRoof)
    superCar2.desc()
    print("\n")
    
    trunckCar1.desc()
    trunckCar1.actionCar(action: .stopEngine)
    trunckCar1.actionCar(action: .openWindow)
    trunckCar1.actionCar(action: .detachTrailer)
    trunckCar1.desc()
    print("\n")
    
    trunckCar2.desc()
    trunckCar2.actionCar(action: .startEngine)
    trunckCar2.actionCar(action: .closeWindow)
    trunckCar2.actionCar(action: .attachTrailer)
    trunckCar2.desc()
    print("\n")
}

