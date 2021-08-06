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
    @IBOutlet weak var avatarImage: UIImageView!
    
    
    
    
 
    
    
    override func viewDidLoad() {
        
     
      
        
        
        
        // создаем экземпляр класса API
            let apiRequest = API()
        // вызываем метод обработки данных
            apiRequest.getBaseUserInfo(name: name, secondName: secondName)
    
        super.viewDidLoad()
        
        
        
        

       
        
        
       
        

                
                
               
                
                
                
            }
        
            
    }






