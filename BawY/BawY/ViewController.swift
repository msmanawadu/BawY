//
//  ViewController.swift
//  BawY
//
//  Created by Sandeepa Manawadu on 2020/10/01.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfAge: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        label.text = ""
        tfAge.becomeFirstResponder()
    }
    
    // keypad slides down when touch anywhere else
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        tfAge.resignFirstResponder()
    }

    @IBAction func didPressBawY(_ sender: Any) {
        
        tfAge.resignFirstResponder()
        
        guard let t1: String = tfAge.text, let humanAge: Int = Int(t1) else {
            label.text = "Please enter a numeric value !"
            return
        }
        
        //calculation
        let dogAge: Int = humanAge / 7
        
        label.text = "Your Doggy is \(dogAge) years old !"
    }
}

