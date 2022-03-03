//
//  Learning_AppApp.swift
//  Learning App
//
//  Created by Samson Shuttle on 03/03/2022.
//

import SwiftUI

@main
struct Learning_App: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
        }
    }
}
