//
//  API.swift
//  AlamofireDemo
//
//  Created by Dmitrii Lobanov on 06.08.2021.
//

import Foundation
import Alamofire

class API {
    
    
    
    func getBaseUserInfo() {
        let VC = ViewController()
        AF.request(URL, method: .get).responseJSON { responce in
                
            let decoder = JSONDecoder()
            do {
                let userBaseInfo = try decoder.decode(UserBaseInfo.self, from: responce.data!)
//                for data in userBaseInfo.response {
//                    
//                    VC.name.text = data.firstName
//                    VC.secondName.text = data.lastName
//                }

              
            }
            catch{
                print(error)
            }
            
                }
    }
}
