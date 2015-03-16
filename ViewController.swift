//
//  ViewController.swift
//  No Apple Juice Dos
//
//  Created by Elias Maus on 3/11/15.
//  Copyright (c) 2015 Elias Maus. All rights reserved.
//

import UIKit





class ViewController: UIViewController {

    
    @IBOutlet weak var emailEntry: UITextField!
    
    @IBOutlet weak var passwordEntry: UITextField!
    
    @IBAction func loginButton(sender: AnyObject) {
    
    }
    
        
    
    @IBAction func donthaveanaccountSignUp(sender: AnyObject) {
        
    
        var dataToSend = ["user" : ["email": emailEntry.text,
                                    "password": passwordEntry.text]
                        ]

        let signUpString = "https://pure-inlet-8534.herokuapp.com/users"
        
        postRequest(address: signUpString, postData: dataToSend)
        
    }
    
    
    
    
    func postRequest(#address: String, postData: Dictionary<String,AnyObject>) {
        
        let url = NSURL(string: address)
        
        let request = NSMutableURLRequest(URL: url!)
        request.HTTPMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        
        var err: NSError?
        request.HTTPBody = NSJSONSerialization.dataWithJSONObject(postData, options: nil, error: &err)
        
        NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue.mainQueue()) { (response, data, error) -> Void in
            
            if error == nil {
                
                println("the response \(response)")
                
                let json = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: nil) as [String: AnyObject]
                
                println(json)
                
            } else {
                println(error)
            }
        }
        
    }
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

