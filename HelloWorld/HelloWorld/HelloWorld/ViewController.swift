//
//  ViewController.swift
//  HelloWorld
//
//  Created by Jaedoo Ko on 2020/01/17.
//  Copyright © 2020 Jaedoo Ko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet var lblHello: UILabel!
    @IBOutlet var txtName: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func btnSend(_ sender: Any) {
        lblHello.text = "Hello, \(txtName.text!)!"
    }
    
    
}

