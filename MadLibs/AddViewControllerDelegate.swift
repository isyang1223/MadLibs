//
//  AddVCDelegate.swift
//  MadLibs
//
//  Created by Ian Yang on 3/13/18.
//  Copyright © 2018 Ian Yang. All rights reserved.
//

import UIKit

protocol AddViewControllerDelegate: class {
    func addText(by controller: AddViewController, adjective: String, verb: String, verb2: String, noun: String)
}
