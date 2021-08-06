//
//  API.swift
//  AlamofireDemo
//
//  Created by Dmitrii Lobanov on 06.08.2021.
//

import Foundation
import Alamofire


class API {
    
// метод обработки базовой информации о пользователе (имя, фамилия, ID)
    func getBaseUserInfo(name:UILabel, secondName:UILabel) {
        apiMetod = "users.get"
        // создаем сетевой запрос данных
        AF.request(URL, method: .get).responseJSON  { responce in
            print(responce)
            // создаем декодер JSON
            let decoder = JSONDecoder()
            
            do {
                // если данные можно получить идем дальше
                guard let data = responce.data else {return}
                // помещаем в память результат декодирования
                let userBaseInfo = try decoder.decode(UserBaseInfo.self, from: data)
                // присваиваем полученные данные
                for data in userBaseInfo.response {
                    name.text = data.firstName
                    secondName.text = data.lastName
                }
            }
            catch let error {
                print(error.localizedDescription)
            }
            
        }
    }
}
