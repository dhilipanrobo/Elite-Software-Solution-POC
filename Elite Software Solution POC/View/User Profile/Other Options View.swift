//
//  Other Options View.swift
//  Elite Software Solution POC
//
//  Created by Apple on 01/04/24.
//

import SwiftUI

struct Other_Options_View: View {
    @State var imageNmae:String = ""
    @State var title:String = ""
    var body: some View {
        VStack{
            Image(systemName: imageNmae)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
                .padding(.vertical,16)
            Text(title)
                .multilineTextAlignment(.center)
                .lineLimit(2)
            Spacer()
        }.frame(width: 146, height: 160)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(color: Color.black.opacity(0.2), radius: 4, x: 0, y: 2)
    }
}

#Preview {
    Other_Options_View(imageNmae: "qrcode.viewfinder",title: "Scan Business Card")
}
