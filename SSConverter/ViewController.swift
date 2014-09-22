//
//  ViewController.swift
//  SSConverter
//
//  Created by Antonio Caravaca Vega on 22/09/14.
//  Copyright (c) 2014 ACV. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menSizeTextField: UITextField!
    @IBOutlet weak var convertedLabel: UILabel!
    @IBOutlet weak var womenSizeTextField: UITextField!
    @IBOutlet weak var womanConvertedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ConvertButtonPressed(sender: UIButton) {
        let sizeFromTextField = menSizeTextField.text.toInt()!
        let conversionConstant = 30
        let convertedSizeString = "\(sizeFromTextField + conversionConstant)"
        convertedLabel.hidden = false
        convertedLabel.text = convertedSizeString + " in European Shoe Size"
    }

    @IBAction func WomanConvertButtonPressed(sender: UIButton) {
        let sizeFromTextField = Double ((womenSizeTextField.text as NSString).doubleValue)
        let conversionConstant = 30.5
        let convertedSizeString = "\(sizeFromTextField + conversionConstant)"
        womanConvertedLabel.hidden = false
        womanConvertedLabel.text = convertedSizeString + " in European Shoe Size"
    }
    
}

