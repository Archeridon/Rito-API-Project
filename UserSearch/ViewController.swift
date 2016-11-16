//
//  ViewController.swift
//  UserSearch
//
//  Created by Student on 11/9/16.
//  Copyright © 2016 Archeridon. All rights reserved.
//

import UIKit
import Foundation


class ViewController: UIViewController {
    
    @IBOutlet weak var searchBox: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        searchBox.text = "cr"
        let check = String(searchBox.text!)
        
        //Get the first character in text box to help with search
        var firstString = searchBox.text!.characters.first
       
        let array = ["Hello", "Bye", "Cry", "Die", "cyre", "Appear", "ApCrysythilis", "Crunchy", "Enlcry"]
        for stringing in array
        {
            if stringing.lowercaseString.rangeOfString("\(check)") != nil
           
            {
                //Make them Strings
                let strung =  String(stringing)
                let captitalString = String(firstString!)
                
                //Make a variable a Capital String to help Search for different things, takes two lines because element to string
                let capitalString = captitalString.uppercaseString
                let compareCap = String(strung.characters.first!)
               
                    //Checks for only Lower Case
                    if strung.characters.first! == firstString
                    {
                        print("Stage 2 \(stringing)")
                    }
                    //Checks for Upper Case
                    else if compareCap == capitalString
                    {
                        print("\(stringing) life is pain, but yah did it")
                    }
                
            }
            
            
            
        }
       
    
    }
    
    
    
    
}
