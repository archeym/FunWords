//
//  AnogramViewController.swift
//  FunWords
//
//  Created by NEXTAcademy on 4/4/17.
//  Copyright © 2017 ArchieApp. All rights reserved.
//

import UIKit

class AnogramViewController: UIViewController {
    @IBOutlet weak var anagramLabel: UILabel!
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func anagramButtonTapped(_ sender: Any) {
       let firstWord = textField1.text?.lowercased().characters.sorted()
       let secondWord = textField2.text?.lowercased().characters.sorted()
        
        if(firstWord! == secondWord!){
            anagramLabel.text = "Yes, you are right!"
        }else{
            anagramLabel.text = "NOPE, you are wrong!"
        }
    }

}
