//
//  ViewController.swift
//  Lab 3
//
//  Created by user237236 on 1/22/24.
//

import UIKit

class ViewController: UIViewController {
    let successString:String = "Successfully submitted!"
    let incompleteString:String = "Complete the missing info!"
    var summary:String = ""

    @IBOutlet weak var textFieldFirstName: UITextField!
    
    @IBOutlet weak var textFieldLastName: UITextField!
    
    @IBOutlet weak var textFieldCountry: UITextField!
    
    @IBOutlet weak var textFieldAge: UITextField!
    
    @IBOutlet weak var textViewSummary: UITextView!
    
    @IBOutlet weak var labelSuccess: UILabel!
    
    @IBAction func buttonAdd(_ sender: Any) {
        summary = """
        Full name: \(textFieldFirstName.text!) \(textFieldLastName.text!)
        Country: \(textFieldCountry.text!)
        Age: \(textFieldAge.text!)
        """
        textViewSummary.text = summary
    }
    
    @IBAction func buttonSubmit(_ sender: Any) {
        labelSuccess.isHidden = false
        if (textFieldFirstName.hasText && textFieldLastName.hasText && textFieldCountry.hasText && textFieldAge.hasText) {
            labelSuccess.text = successString
        } else {
            labelSuccess.text = incompleteString
        }
    }
    
    @IBAction func buttonClear(_ sender: Any) {
        textFieldFirstName.text = ""
        textFieldLastName.text = ""
        textFieldCountry.text = ""
        textFieldAge.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelSuccess.isHidden = true
    }


}

