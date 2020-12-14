//
//  ViewController.swift
//  tradingBasic
//
//  Created by Yoahn Linard on 02/12/2020.
//

import UIKit

class GreatingViewController: UIViewController
{

    @IBOutlet weak var getStartedButtonOutlet: UIButton!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.initGetStartedButtonOutlet()
        self.initPastelView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.getUserStatus()
    }

    @IBAction func getStartedButtonAction(_ sender: Any)
    {
        self.performSegue(withIdentifier: "login", sender: self)   
    }
    
}

