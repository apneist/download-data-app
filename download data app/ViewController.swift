//
//  ViewController.swift
//  download data app
//
//  Created by Filippos Katsilidis on 20/09/2016.
//  Copyright © 2016 FilKats. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var webview: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        
        
        if let url = URL(string: "https://www.twitter.com") {
            
        let request = NSMutableURLRequest(url: url)
            
            let task = URLSession.shared.dataTask(with: request as URLRequest) {
                
                data, response, error in
                
                if error != nil {
                    
                    print (error)
                    
                } else {
                    
                    if let unwrappedData = data {
                        
                        let dataString = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
                        
                        print (dataString)
                        print ("i am the best coder in the multiverse and the universe geeza!")
                        
               
                        
                    }
                    
                }
                
                    
                }
            
               task.resume()
                
            }
 
        
    }
 
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

