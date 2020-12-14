//
//  LoginPageController.swift
//  tradingBasic
//
//  Created by Yoahn Linard on 09/12/2020.
//

import UIKit
import Apollo

class LoginPageController: UIViewController
{
    var email: String?
    var password: String?
    
    @IBOutlet weak var loginButtonOutlet: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initPastelView()
        self.initLoginButtonOutlet()
    }
    
    @IBAction func returnButtonAction(_ sender: UIButton)
    {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
    
    @IBAction func usernameEditingBegin(_ sender: UITextField)
    {
        self.view.frame.origin.y -= 90
    }
    
    @IBAction func usernameEditingEnd(_ sender: UITextField)
    {
        self.view.frame.origin.y = 0
        self.email = sender.text
    }
    
    @IBAction func passwordEditingBegin(_ sender: Any)
    {
        self.view.frame.origin.y -= 90
    }
    
    @IBAction func passwordEditingEnd(_ sender: UITextField)
    {
        self.view.frame.origin.y = 0
        self.password = sender.text
    }
    
    @IBAction func loginButtonAction(_ sender: Any)
    {
        self.login()
    }
    
}
