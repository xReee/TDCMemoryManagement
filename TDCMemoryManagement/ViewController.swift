import UIKit

class ViewController: UIViewController {
    var tdcSP: Event?
    var you: Attendee?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: IBActions
    @IBAction func didPressedStartEvent(_ sender: UIButton) {
        startEvent()
    }
    @IBAction func didPressedEndEvent(_ sender: UIButton) {
        endEvent()
    }
    @IBAction func didPressedStartAttendee(_ sender: UIButton) {
        startAttendee()
    }
    @IBAction func didPressedEndAttendee(_ sender: UIButton) {
        endAttendee()
    }
    
    // MARK: Custom Functions
    func startEvent() {
        tdcSP = Event(name: "TDC SP 2020")
    }
    func endEvent() {
        tdcSP = nil
    }
    func startAttendee() {
        guard let strongTdc = tdcSP else {
            print("Oopps.. no event!")
            return
        }
        you = Attendee("Renata", ofEvent: strongTdc)
        tdcSP?.greet(you!)
    }
    func endAttendee() {
        you = nil
    }
}

