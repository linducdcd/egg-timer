//
//  ViewController.swift
//  egg timer
//
//  Created by Lind Ucdcd on 5/22/19.
//  Copyright © 2019 Lind Ucdcd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var i = 256
    var time = Timer()
    
    @objc func decrease() {
        
        if i > 0{
        timerShow.text = String(i)
        i -= 1
        }
        if  i == 0 {
            
            
            timerShow.text = "0 , it's Finished"

            time.invalidate()
            
        }
    }
    

    
    //MARK: - nav Bar
    @IBAction func playButton(_ sender: UIBarButtonItem) {
        
        time = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decrease), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func puseButton(_ sender: UIBarButtonItem) {
        time.invalidate()
    }
    
    
    //MARK: - buttom Bar
    @IBAction func tenMButton(_ sender: UIBarButtonItem) {
        i -= 10
    }
    
    @IBAction func tenPButton(_ sender: UIBarButtonItem) {
        i += 10
    }
    
    @IBAction func resetButton(_ sender: UIBarButtonItem) {
        i = 256
    }
    
    
    @IBOutlet weak var timerShow: UILabel!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    


}

