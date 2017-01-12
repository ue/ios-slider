//
//  ViewController.swift
//  HelloWorld
//
//  Created by ugur's mac on 12/01/2017.
//  Copyright © 2017 ugur's mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var titleImage: UIImageView!
    @IBOutlet weak var welcomeButton: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func welcomePressed(_ sender: Any) {
        background.isHidden = false
        titleImage.isHidden = false
        welcomeButton.isHidden = true
    }

}

