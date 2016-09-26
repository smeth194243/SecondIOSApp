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
    
    @IBOutlet weak var firstStepper:
    UIStepper!
    

    @IBOutlet weak var firstSwitch: UISwitch!
    @IBOutlet var appBackground: UIView!
    
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
        textLabel.textColor = makeRandomColor()
        appBackground.backgroundColor = makeRandomColor()
    }
    
    
    @IBAction func StepperPressed(sender: UIStepper) ->
        Void
    {
        textLabel.text = "You changed the stepper"
    }
    
    @IBAction func switchChanged(sender: UISwitch) ->
        Void
    {
        textLabel.text = "You changed the switch!"
    }
    
    private func makeRandomColor() ->UIColor
    {
        let randomColor : UIColor
        
        //Color in Swift is a percentage - from 0-1 nclusive.
        //Of type CGFloat for all components RGBA
        
        let redColor : CGFloat = CGFloat(drand48())
        let greenColor : CGFloat = CGFloat(Double(arc4random_uniform(256))/255.00)
        let bluecColor : CGFloat = CGFloat(drand48())
        let alphaChannel : CGFloat = 1.0
        
        randomColor = UIColor(red: redColor, green: greenColor, blue: bluecColor, alpha: alphaChannel)
        
        return randomColor
    }
    
  }

