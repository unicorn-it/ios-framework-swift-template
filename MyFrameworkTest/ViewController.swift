//
//  ViewController.swift
//  MyFrameworkTest
//
//  Created by Unicorn IT on 25.02.16.
//  Copyright © 2016 com.my.framework.test. All rights reserved.
//

import UIKit
import MyFramework

class ViewController: UIViewController {
    
    @IBOutlet weak var loginView: MyLoginView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.loginView.loginHandler = self.login
    }

    func login(username: String, password: String) {
        
        let alert = UIAlertController(title: "Login", message:"I guess i should log in now", preferredStyle: .Alert)
        alert.addAction(UIAlertAction(title: "OK", style: .Default) { _ in })
        
        self.presentViewController(alert, animated: true){}
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

