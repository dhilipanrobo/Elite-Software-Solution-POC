//
//  Prospect info View.swift
//  Elite Software Solution POC
//
//  Created by Apple on 01/04/24.
//

import SwiftUI

struct Prospect_info_View: View {
    @State private var isToggleOn = false
    var body: some View {
        VStack{
            Toggle(isOn: $isToggleOn, label: {
                Text("Collect Prospect info")
                    .padding(.leading,8)
            }).padding(.trailing,8)
        }
        .frame(width: 300, height: 50)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(color: Color.black.opacity(0.2), radius: 4, x: 0, y: 2)
    }
}

#Preview {
    Prospect_info_View()
}
