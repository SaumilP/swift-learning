// Swift Playground : First Look at Swift Programming Language by Example

// User : Saumil Patel
// Date : 2014-06-16
// Version : 0.1

import Cocoa

/* Example:1 Hello World*/
println("Greetings User")

/* Example:2 Mutable/Immutable (Constants) Variables */
var myName = "User"
myName = "Saumil"
let myNameConst = "My name is Saumil"

let inferedIntValue = 70
let inferedDblValue = 70.0
let expDblValue: Double = 70.0

/* Example:3 Type manipulation */
//Date Extension for future use
extension NSDate {
    convenience
    init(dateString: String) {
        let dateStringformatter = NSDateFormatter()
        dateStringformatter.dateFormat = "yyyy-MM-dd"
        dateStringformatter.locale = NSLocale(localeIdentifier: "en_US_POSIX")
        let d = dateStringformatter.dateFromString(dateString)
        self.init(timeInterval:0, sinceDate:d)
    }
}
let greetingMsg = "Greetings User, Today is "
let today = NSDate(dateString: "2014-06-16")
let shortGreetingMsg = greetingMsg + today.description

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruits = "I have total \(apples + oranges) fruits."

/* Example:4 Arrays and Dictionaries */
var langList = [ "Core Java", "Swift", "Scala", "C++", "CSharp", "JavaScript", "Python" ]
langList[1] = "Java"
var occupations = [
    "Engineer": "Who builds stuff",
    "Doctor" : "Who fixes humans",
    "Mechanic" : "Who fixes vehicals",
    "President" : "Who represents country"
]
occupations["Journalist"] = "Who reports news to public"

//Empty Array & Dictionary
let emptyArray = String[]()
let emptyDictionary = Dictionary<String, Int>()

/* Example:5 Control Flow Structures */
// 5.1 FOR loop
let studentScores = [ 46, 77, 82, 91, 60, 50 ]
var avgPassScore = 0, totScore = 0
let totStudents = studentScores.count
for score in studentScores {
    if score >= 50 {
        totScore += score
        avgPassScore = totScore/totStudents
    }
}
"Total Score: \(totScore), Avg. Passing Score: \(avgPassScore)"

//5.2 IF Loop with Optional Variables
var awsomeString: String? = " is awsome"
awsomeString == nil
var crapString: String? = " is crap"
var language = "Swift"
if let behaviorString = awsomeString {
    language = language + awsomeString!
} else {
    language = language + crapString!
}

//5.3 SWITCH..CASE
let movieGenre = "Comedy"


/* Example:6 Interface/Traits Definition */
protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}

/* Class implementing Interface <ExampleProtocol> */
class SimpleClass : ExampleProtocol {
    var simpleDescription: String = "A very simple class"
    var anotherProperty:Int = 61324
    func adjust(){
        simpleDescription += " Now 100% adjusted"
    }
}

/* Object initialization*/
var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription

/* Use of defined Protocol with Structures */
struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}

/* Structure Construction & use of protocol traits */
var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription

