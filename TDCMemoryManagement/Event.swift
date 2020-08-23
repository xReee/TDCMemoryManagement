import Foundation

typealias Clousure = (Attendee) -> ()

class Event {
    let name: String
    var attendee: Attendee?
    lazy var greet: Clousure = { attendee in
        self.attendee = attendee
        print("Hey! A new attendee! Welcome \(attendee.name)!")
    }
    
    // MARK: LifeCycle
    init(name: String) {
        self.name = name
        print("Event \(name) just started!")
    }
    deinit {
        print("Event \(name) is over 😭")
    }

}
