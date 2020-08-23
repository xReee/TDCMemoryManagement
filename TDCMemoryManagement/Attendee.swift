import Foundation

class Attendee {
    /// use weak here to break the reference cycle
    weak var event: Event?
    let name: String
    
    // MARK: LifeCycle
    init(_ name: String, ofEvent event: Event) {
        self.event = event
        self.name = name
        print("Attendee \(name) just arrived!")
    }
    deinit {
        let eventName = event?.name ?? ""
        print("Attendee \(name) just quit the event \(eventName) 😭")
    }
}
