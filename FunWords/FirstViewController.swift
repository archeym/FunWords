//
//  FirstViewController.swift
//  FunWords
//
//  Created by NEXTAcademy on 4/4/17.
//  Copyright © 2017 ArchieApp. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var palindromeLabel: UILabel!
    @IBOutlet weak var textField: UITextField!

   

    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    @IBAction func palindromeButtonTapped(_ sender: Any) {
        //var name = "madam"
//        let something = String(name.characters.reversed())
//        "madam" = something
        
        var inputText = textField.text?.lowercased()
        inputText = inputText?.replacingOccurrences(of: " ", with: "")
        var reversed = ""
        
        for char in (inputText?.characters.reversed())!{
            reversed.append(char)
        
        if(reversed==inputText){
            palindromeLabel.text = "Yes, it's a Palingram"
        }else{
            palindromeLabel.text = "NOPE, it's not"
        }
    }

}
}
