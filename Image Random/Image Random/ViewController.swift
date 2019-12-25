//
//  ViewController.swift
//  Image Random
//
//  Created by Álvaro Santillan on 11/17/18.
//  Copyright © 2018 Álvaro Santillan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // variables
    var randomImage1: Int = 0
    var randomImage2: Int = 0
    
    let imgArray = ["austin-smart-70350","clem-onojeghuo-196232.jpg","francesco-gallarotti-2497","joanna-kosinska-129039","karsten-wurth-96082","levi-saunders-71726","math-83287","math-83288","michal-grosicki-235026","patrick-tomasso-216284","rodion-kutsaev-82627","tim-mossholder-244857.jpg"]

    @IBOutlet weak var imageSquare1: UIImageView!
    
    @IBAction func search(_ sender: Any) {
        searchImage()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        searchImage()
    }
    
    // shake fhone
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        searchImage()
    }

    // function for leaver
    func searchImage(){
        randomImage1 = Int.random(in: 0 ... 11)
        imageSquare1.image = UIImage(named: imgArray[randomImage1])
    }
}
