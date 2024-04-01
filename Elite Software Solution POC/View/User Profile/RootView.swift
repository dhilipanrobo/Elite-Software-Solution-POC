//
//  ContentView.swift
//  Elite Software Solution POC
//
//  Created by Apple on 01/04/24.
//

import SwiftUI

struct RootView: View {
    @EnvironmentObject private var userProfile : UserProfileController
    var body: some View {
        VStack {
            HStack{
                Spacer()
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 100)
                Spacer()
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 0) {
                    ForEach (userProfile.profiles,id: \.self){profile in
                        ScrollView(.vertical, showsIndicators: false) {
                            VStack{
                                ProfileView(UserName: "\(profile.profile_first_name ?? "") \(profile.profile_last_name ?? "")",job: "\(profile.profile_job_title ?? "") at \(profile.profile_company_name ?? "")")
                                Prospect_info_View()
                                
                                HStack{
                                    Other_Options_View(imageNmae: "qrcode.viewfinder",title: "Scan \nBusiness Card")
                                    
                                    Other_Options_View(imageNmae: "magnifyingglass",title: "My Prospects")
                                }.frame(width: 300)
                                HStack{
                                    Other_Options_View(imageNmae: "command.circle",title: "Setting")
                                    
                                    Other_Options_View(imageNmae: "snowflake",title: "Discover ")
                                }.frame(width: 300)
                                
                            }.frame(width: 330)
                        }
                    }
                }.padding(.leading,10)
            }
            Spacer()
        }
        .edgesIgnoringSafeArea(.bottom)
        .task {
            await userProfile.load()
        }
    }
}
#Preview {
    RootView()
}


