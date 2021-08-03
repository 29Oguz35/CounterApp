//
//  ViewController.swift
//  SaymaApp
//
//  Created by naruto kurama on 24.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var countLabel: UILabel!
     
     var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func artıButtonClicked(_ sender: Any) {
        count += 1
        countLabel.text = String(count)
        
        
    }
    
    @IBAction func zeroButtonClicked(_ sender: Any) {
        
        count = 0
        countLabel.text = String("0")
        
    }
    @IBAction func exitButtonClicked(_ sender: Any) {
       
        UIControl().sendAction(#selector(NSXPCConnection.suspend),
                               to: UIApplication.shared, for: nil)
    }
    
}

