//
//  ApiManager.swift
//  Elite Software Solution POC
//
//  Created by Apple on 01/04/24.
//

import Foundation
import Alamofire

class ApiManager:NSObject {
    func getData()  {
        
    }
    static func Get (api:String,success:@escaping (Data)->Void,failure:@escaping(Error)->Void){
        
        AF.request(api,method:.get,encoding: URLEncoding.default).responseJSON { response in
            do{
                guard let responseData = response.data else {
                    return
                }
                switch response.result{
                case .success:
                    success(responseData)
                case .failure(let error):
                    failure(error)
                }
            }
        }
    }
}
