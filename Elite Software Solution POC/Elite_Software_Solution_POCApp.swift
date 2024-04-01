//
//  Elite_Software_Solution_POCApp.swift
//  Elite Software Solution POC
//
//  Created by Apple on 01/04/24.
//

import SwiftUI

@main
struct Elite_Software_Solution_POCApp: App {
    var body: some Scene {
        WindowGroup {
            let userProfileController = UserProfileController()
            RootView().environmentObject(userProfileController)
        }
    }
}
