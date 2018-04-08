//
//  ViewController.swift
//  MadLibs
//
//  Created by Ian Yang on 3/13/18.
//  Copyright © 2018 Ian Yang. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {


    @IBOutlet weak var adjectiveLabel: UITextField!
    @IBOutlet weak var verbLabel: UITextField!
    @IBOutlet weak var verb2Label: UITextField!
    @IBOutlet weak var nounLabel: UITextField!
    
    weak var delegate: AddViewControllerDelegate?
    
    @IBAction func submitButton(_ sender: UIButton) {
        delegate?.addText(by: self, adjective: adjectiveLabel.text!, verb: verbLabel.text!, verb2: verb2Label.text!, noun: nounLabel.text!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
