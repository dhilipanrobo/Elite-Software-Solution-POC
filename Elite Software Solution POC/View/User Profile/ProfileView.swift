//
//  ProfileView.swift
//  Elite Software Solution POC
//
//  Created by Apple on 01/04/24.
//

import SwiftUI

struct ProfileView: View {
    @State var UserName:String = ""
    @State var job:String = ""
    var body: some View {
        VStack{
            ZStack(alignment:.top){
                Image("blueBackgroundImage")
                    .resizable()
                    .frame(width: .infinity, height: 110)
                HStack{
                    Spacer()
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "pencil.line")
                            .background(Color.white)
                            .cornerRadius(2)
                            .frame(width: 20, height: 20)
                    }).padding(.top,16)
                        .padding(.trailing,16)
                }
                
                VStack{
                    Image(systemName: "person.circle")
                        .resizable()
                        .foregroundStyle(.white)
                        .background(Color.gray)
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 120, height: 120)
                        .clipShape(Circle())
                        .padding(.top,55)
                    
                    Text(UserName)
                        .font(.title)
                    Text(job)
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                    HStack{
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            
                            Text("Write to NFC Card")
                                .foregroundStyle(Color.black)
                                .padding(8)
                                .padding(.horizontal,2)
                            
                        }).background(Color.gray.opacity(0.5))
                          .cornerRadius(4)
                        Spacer()
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("Preview")
                                .foregroundStyle(Color.black)
                                .padding(8)
                                .padding(.horizontal,18)
                        }).background(Color.gray.opacity(0.5))
                          .cornerRadius(4)
                    }.padding(.horizontal,8)
                        .padding(.vertical,8)
                    
                }
            }
            Spacer()

        }.frame(width:  300, height: 316)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(color: Color.black.opacity(0.2), radius: 4, x: 0, y: 2)
    }
}

#Preview {
    ProfileView()
}
