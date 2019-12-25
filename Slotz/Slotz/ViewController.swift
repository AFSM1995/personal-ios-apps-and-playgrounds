//
//  ViewController.swift
//  Slotz
//
//  Created by Álvaro Santillan on 11/17/18.
//  Copyright © 2018 Álvaro Santillan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // variables
    @IBOutlet weak var slot1: UIImageView!
    @IBOutlet weak var slot2: UIImageView!
    @IBOutlet weak var slot3: UIImageView!
    
    var randomSlotValue1: Int = 0
    var randomSlotValue2: Int = 0
    var randomSlotValue3: Int = 0
    
    let slotArray = ["cherry","grapes","heart","lemon","orange","seven"]
    
    // the buttons
    @IBAction func leaverOne(_ sender: Any) {
        pullSlotLeaver1()
    }
    
    @IBAction func leaverTwo(_ sender: Any) {
        pullSlotLeaver2()
    }
    
    @IBAction func leaverThree(_ sender: Any) {
        pullSlotLeaver3()
    }
    
    // shake fhone
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        pullSlotLeaver1()
        pullSlotLeaver2()
        pullSlotLeaver3()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pullSlotLeaver1()
        pullSlotLeaver2()
        pullSlotLeaver3()
    }
    
    // function for leaver
    func pullSlotLeaver1(){
        randomSlotValue1 = Int.random(in: 0 ... 5)
        
        slot1.image = UIImage(named: slotArray[randomSlotValue1])
    }
    
    // function for leaver
    func pullSlotLeaver2(){
        randomSlotValue2 = Int.random(in: 0 ... 5)
        
        slot2.image = UIImage(named: slotArray[randomSlotValue2])
    }
    
    // function for leaver
    func pullSlotLeaver3(){
        randomSlotValue3 = Int.random(in: 0 ... 5)
        
        slot3.image = UIImage(named: slotArray[randomSlotValue3])
    }
}
