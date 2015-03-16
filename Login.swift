//
//  Login.swift
//  No Apple Juice Dos
//
//  Created by Elias Maus on 3/11/15.
//  Copyright (c) 2015 Elias Maus. All rights reserved.
//

import UIKit

class Login: UIViewController {

    @IBOutlet weak var loginEmail: UITextField!
   
    @IBOutlet weak var loginPassword: UITextField!
    
    @IBOutlet weak var reenterPassword: UITextField!
    
    @IBAction func signUP(sender: AnyObject) {
    }
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
