import Foundation

class Storage {
    
    static var shared = Storage()
    
    func setStateValue(value: Bool) {
        UserDefaults.standard.set(value, forKey: "state")
    }
    
    func getStateValue() -> Bool {
        return UserDefaults.standard.bool(forKey: "state")
    }
}
