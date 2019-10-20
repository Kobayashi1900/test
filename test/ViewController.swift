//
//  ViewController.swift
//  test
//
//  Created by kobayashi on 2019/10/20.
//  Copyright © 2019 koba. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var registButton: UIButton!
    
    private var mailText: String?
    private var passwordText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func mailEditChanged(_ sender: UITextField) {
        
        sender.text = self.mailText
        self.validate()
        
    }
    
    @IBAction func passwordEditChanged(_ sender: UITextField) {
        
        sender.text = self.passwordText
        self.validate()
        
    }
    
    private func validate() {
          
          // nilの場合はregistButtonを非活性に
          guard let mailTxt = self.mailText,
                let passTxt = self.passwordText else {
                  
                  self.registButton.isEnabled = false
                    return
                    
          }
      
          // 文字数が0の場合(""空文字)registButtonを非活性に
          if mailTxt.count == 0 || passTxt.count == 0 {
            
              self.registButton.isEnabled = false
              return
            
          }
          
          // nilでないかつ0文字以上はregistButtonを活性に
          self.registButton.isEnabled = true
        
    }

}
