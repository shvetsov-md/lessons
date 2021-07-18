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
        
        enum Trunk {
            case load (litr: Double)        //загруженный объем
            case upload (litr: Double)      //выгруженный объем
            case volume (litr: Double)      //общий объем
            case fillVilume (litr: Double)  //заполненный объем
        }
    }
    
    struct SportCar {
        var brand: String
        var years: Date
        var volumeTrunck: ActionsCars.Trunk
        var engine: ActionsCars.Engine
        var window: ActionsCars.Windows
        var fillVolumeTrunck: ActionsCars.Trunk
        
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
    }
    
    struct TrunkCar {
        var brand: String
        var years: Date
        var volumeTrunck: ActionsCars.Trunk
        var engine: ActionsCars.Engine
        var window: ActionsCars.Windows
        var fillVolumeTrunck: ActionsCars.Trunk
        
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
    }
    
    
    
}



