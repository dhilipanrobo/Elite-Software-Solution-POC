//
//  User Profile Controller.swift
//  Elite Software Solution POC
//
//  Created by Apple on 01/04/24.
//

import Foundation
class UserProfileController : ObservableObject {
    @Published var  profiles = [Profiles]()
    func load() async {
        await loadUserProfileApi()
    }
    @MainActor func loadUserProfileApi() async {
        ApiManager.Get(api: "http://ec2-3-7-253-252.ap-south-1.compute.amazonaws.com:3052/user/profiles/cb3d7d28-0cd6-4505-8f33-35f5543dfbbd") { [self] response in
            do {
                let jsonDecoder = JSONDecoder()
                let responseModel = try jsonDecoder.decode(UserProfile_Base.self, from: response)
                profiles = responseModel.profiles ?? []
            }catch{
                
            }
            
        } failure: { Error in
            
        }
        
    }
}
