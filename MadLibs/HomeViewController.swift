//
//  ViewController.swift
//  MadLibs
//
//  Created by Ian Yang on 3/13/18.
//  Copyright © 2018 Ian Yang. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, AddViewControllerDelegate{
    
    @IBOutlet weak var mainLabel: UILabel!
    
    @IBAction func addTextButton(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "ComposeSegue", sender: nil)
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! AddViewController
        destination.delegate = self
        
    }
    
    func addText(by controller: AddViewController, adjective: String, verb: String, verb2: String, noun: String) {
        mainLabel.text = "We are having a perfectly \(adjective) time now. Later we will \(verb) and \(verb2) in the \(noun)."
        
        dismiss(animated: true, completion: nil)
    }
    


}

