//
//  ViewController.swift
//  AlamofireDemo
//
//  Created by Dmitrii Lobanov on 05.08.2021.
//

import UIKit
import Alamofire




class ViewController: UIViewController {
    
    // аутлет Имя
    @IBOutlet weak var name: UILabel!
    // аутлет Фамилия
    @IBOutlet weak var secondName: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.main.async {
            let apiRequest = API()
            apiRequest.getBaseUserInfo()
        }
       
        
        
       
        

                
                
               
                
                
                
            }
        
            
    }






