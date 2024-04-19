import Cocoa

var greeting = "Hello, playground"

// Define protocols for managing water and electricity systems in the camping trailer

protocol WaterSystem {
    var waterCapacity: Double { get }
    func fillWaterTank()
    func drainWaterTank()
}

protocol ElectricitySystem {
    var batteryLevel: Double { get set }
    func chargeBattery()
    func checkBatteryLevel() -> String
}

// Implement a class named Camper that conforms to the two defined protocols

class Camper: WaterSystem, ElectricitySystem {
    var waterCapacity: Double = 100.0
    var batteryLevel: Double = 0.0
    
    func fillWaterTank() {
        print("Water tank filled.")
    }
    
    func drainWaterTank() {
        print("Water tank drained.")
    }
    
    func chargeBattery() {
        batteryLevel = 100.0
        print("Battery fully charged.")
    }
    
    func checkBatteryLevel() -> String {
        return "Battery level is \(batteryLevel)%."
    }
}

// test func:

let myCamper = Camper()
myCamper.fillWaterTank()
myCamper.drainWaterTank()
myCamper.chargeBattery()
myCamper.checkBatteryLevel()
