//
//  ViewController.swift
//  MyFirstProject
//
//  Created by Kristaps Brēmers on 01/02/2019.
//  Copyright © 2019 Chili. All rights reserved.
//
import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    var str: String = "You have entered: "
    var label: UILabel!
    var textField: UITextField!
    var clicks = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
         view.backgroundColor = UIColor.yellow
        print("Hello", "World", 69, separator:" ", terminator:"!")
        
        
        
        
        let placeholder = NSAttributedString(string: "Enter here", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        
        textField = UITextField(frame: CGRect(x: 50, y: 100, width: 200, height: 20))
        textField.attributedPlaceholder = placeholder
        textField.textColor = UIColor.black
        textField.delegate = self
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.clearsOnBeginEditing = true
        view.addSubview(textField)
        self.textField.becomeFirstResponder()

        
        
        
        
        let button = UIButton(frame: CGRect(x: 100, y: 200, width: 100, height: 50))
        button.backgroundColor = .green
        button.setTitle("Test Button", for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        self.view.addSubview(button)
        
        label = UILabel(frame: CGRect(x: 30, y: 500, width: 400, height: 20))
        label.text = str
        view.addSubview(label)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        textField.becomeFirstResponder() }
    
    @objc func buttonAction(sender: UIButton!) {
        // 1 store variable from textfield to class variabkle
        // 2 when pressing button again, check the stored variable, if is valid
        
        label.text = str+textField.text!
        
    }
    
    
    
}

