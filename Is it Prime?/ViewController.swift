//
//  ViewController.swift
//  Is it Prime?
//
//  Created by Adegoke Ayomikun on 14/08/2019.
//  Copyright © 2019 Devmikzy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var numberEntered: UITextField!
    @IBOutlet weak var statusPrime: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func checkPrime(_ sender: UIButton) {
        if let userEnteredString = numberEntered.text{
            let userEnteredInteger : Int? = Int(userEnteredString)
            if let sureNumber = userEnteredInteger{
                var i = 2
                var isPrime: Bool = true
                
                if sureNumber == 1{
                    isPrime = true
                }
                
                while i < sureNumber{
                    if sureNumber % i == 0{
                        isPrime = false
                    }
                    i = i + 1
                }
                if isPrime{
                    statusPrime.text = "\(sureNumber) is Prime!"
                }else{
                    statusPrime.text = "\(sureNumber) is NOT Prime!"
                }
            }else{
                statusPrime.text = "Please Enter a positive whole number"
            }
        }
        
    }
    
}

