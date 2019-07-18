/*
 Homework Assignment #5: Classes, Structs, and Enums
 
 Create a class called "Vehicle" and add methods that allow you to set the "Make", "Model", "Year,", and "Weight".
 
 The class should also contain a "NeedsMaintenance" boolean that defaults to False, and and "TripsSinceMaintenance" Integer that defaults to 0.
 
 Next create a subclass that inherits the properties of Vehicle class. Call this new subclass "Cars".
 
 The Cars class should contain a method called "Drive" that sets the state of a boolean isDriving to True.  It should have another method called "Stop" that sets the value of isDriving to false.
 
 Switching isDriving from true to false should increment the "TripsSinceMaintenance" counter. And when TripsSinceMaintenance exceeds 100, then the NeedsMaintenance boolean should be set to true.
 
 Add a "Repair" method to either class that resets the TripsSinceMaintenance to zero, and NeedsMaintenance to false.
 
 Create 3 different cars, using your Cars class, and drive them all a different number of times. Then print out their values for Make, Model, Year, Weight, NeedsMaintenance, and TripsSinceMaintenance
 
 
 Extra Credit:
 
 Create a Planes class that is also a subclass of Vehicle. Add methods to the Planes class for Flying and Landing (similar to Driving and Stopping), but different in one respect: Once the NeedsMaintenance boolean gets set to true, any attempt at flight should be rejected (return false), and an error message should be printed saying that the plane can't fly until it's repaired.
 */

class Vehicle {
    var make: String
    var model: String
    var year: Int
    var weight: Int
    var needsMaintenance: Bool = false
    var tripsSinceMaintenance: Int = 0 {
        didSet {
           needsMaintenance = tripsSinceMaintenance > 100
        }
    }
    
    init(make: String, model: String, year: Int, weight: Int) {
        self.make = make
        self.model = model
        self.year = year
        self.weight = weight
    }
    
    func setMake(_ value: String) {
        make = value
    }
    
    func setModel(_ value: String) {
        model = value
    }
    
    func setYear(_ value: Int) {
        year = value
    }
    
    func setWeight(_ value: Int) {
        weight = value
    }
    
    func repair() {
        needsMaintenance = false
        tripsSinceMaintenance = 0
    }
    
    func printStats() {
        print("""
            \(make) \(model) (\(year))
            Weight: \(weight)
            Trips since maintenance: \(tripsSinceMaintenance)
            Needs maintenance: \(needsMaintenance ? "Yes" : "No")
        """)
    }
}

class Car: Vehicle {
    var isDriving: Bool = false {
        didSet {
            if (!isDriving && oldValue) {
                tripsSinceMaintenance += 1
            }
        }
    }

    func drive() {
        isDriving = true
    }
    
    func stop() {
        isDriving = false
    }
}

class Plane: Vehicle {
    var isFlying: Bool = false {
        didSet {
            if (!isFlying && oldValue) {
                tripsSinceMaintenance += 1
            }
        }
    }
    
    func fly() {
        if needsMaintenance {
            print("\n[!] The plane can't fly until it's repaired\n")
        } else {
            isFlying = true
        }
    }
    
    func land() {
        isFlying = false
    }
}

let cars: [Car] = [
    Car(make: "Nissan", model: "Versa", year: 2020, weight: 1223),
    Car(make: "Chevrolet", model: "Camaro", year: 2020, weight: 2234),
    Car(make: "Volkswagen", model: "Beetle", year: 2020, weight: 1434),
]

let trips = 101

for car in cars {
    print("Brand new car stats")
    car.printStats()
    for _ in 1...trips {
        car.drive()
        if car.isDriving {
            car.stop()
        }
    }
    print("\nAfter \(trips) trips...")
    car.printStats()
    car.repair()
    print("\nAfter repair...")
    car.printStats()
    print("\n-----------------------------\n")
}

let planes: [Plane] = [
    Plane(make: "Learjet", model: "75", year: 2020, weight: 1223),
    Plane(make: "Embraer Phenom", model: "100", year: 2020, weight: 2234),
    Plane(make: "Gulfstream", model: "G650", year: 2020, weight: 1434),
]

let flights = 102

for plane in planes {
    print("Brand new plane stats")
    plane.printStats()
    print("\nAfter \(flights) flights...")
    for _ in 1...flights {
        plane.fly()
        if plane.isFlying {
            plane.land()
        }
    }
    plane.printStats()
    plane.repair()
    print("\nAfter repair...")
    plane.printStats()
    print("\n-----------------------------\n")
}


