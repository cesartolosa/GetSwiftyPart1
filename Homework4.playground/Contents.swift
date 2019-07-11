let second: UInt = 1
let minute: UInt = second * 60
let hour: UInt = minute * 60
let day: UInt = hour * 24

func getSeconds(_ value: UInt, _ label: String) -> UInt? {
    switch label {
    case "seconds":
        return value != 1 ? value * second : nil
    case "minutes":
        return value != 1 ? value * minute : nil
    case "hours":
        return value != 1 ? value * hour : nil
    case "days":
        return value != 1 ? value * day : nil
    case "second":
        return value == 1 ? second : nil
    case "minute":
        return value == 1 ? minute : nil
    case "hour":
        return value == 1 ? hour : nil
    case "day":
        return value == 1 ? day : nil
    default:
        return nil
    }
}

func timeAdder(_ value1: UInt, _ label1: String, _ value2: UInt, _ label2: String) -> (value: UInt, unit: String)? {
    let seconds1 = getSeconds(value1, label1)
    if seconds1 == nil {
        return nil
    }
    let seconds2 = getSeconds(value2, label2)
    if seconds2 == nil {
        return nil
    }
    var timeValue: UInt = seconds1! + seconds2!
    var timeUnit: String = "second"
    if timeValue.isMultiple(of: day) {
        timeValue /= day
        timeUnit = "day"
    } else if timeValue.isMultiple(of: hour) {
        timeValue /= hour
        timeUnit = "hour"
    } else if timeValue.isMultiple(of: minute) {
        timeValue /= minute
        timeUnit = "minute"
    }
    return (value: timeValue, unit: "\(timeUnit)\(timeValue != 1 ? "s" : "")")
}

timeAdder(5, "hour", 5, "minutes")
// timeAdder(false,false,5,"minutes")
// timeAdder({}, "days", 5, "minutes")
timeAdder(20, "hours", 4, "hours")
timeAdder(20, "hours", 5, "hours")
timeAdder(59, "minutes", 60, "seconds")
