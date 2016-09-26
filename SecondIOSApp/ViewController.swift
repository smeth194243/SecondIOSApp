//
//  ViewController.swift
//  SecondIOSApp
//
//  Created by Morris, Seth on 9/26/16.
//  Copyright © 2016 Morris, Seth. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet private weak var textLabel:
    UILabel!
    
    @IBOutlet private weak var firstButton:
    UIButton!
    
    @IBOutlet private weak var firstSlider:
    UISlider!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func firstButtonClick(sender: UIButton) ->
        Void
    {
        textLabel.text = "You clicked the button!"
    }
}

