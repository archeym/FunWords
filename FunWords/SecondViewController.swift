//
//  SecondViewController.swift
//  FunWords
//
//  Created by NEXTAcademy on 4/4/17.
//  Copyright © 2017 ArchieApp. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var isogramLabel: UILabel!
    @IBOutlet weak var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func isogramButtonTapped(_ sender: Any) {
        var textInput = textField.text?.lowercased()
        textInput = textInput!.replacingOccurrences(of: " ", with: "")
        
        for index in 0..<textInput!.characters.count {
            
        let charIndex = textInput!.index(textInput!.startIndex, offsetBy: index)
        let currentCharacter = textInput![charIndex]
            
            for compareIndex in (index + 1)..<textInput!.characters.count {
                
                let comparedInputIndex = textInput!.index(textInput!.startIndex, offsetBy: compareIndex)
                let comparedCharacter = textInput![comparedInputIndex]
                
                if currentCharacter == comparedCharacter{
                    
                    isogramLabel.text = "It's not Isogram"
                    return
                }else {
                    isogramLabel.text = "It is Isogram"
                }
            }
        }
    }
}

