//
//  ContentView.swift
//  Learning App
//
//  Created by Samson Shuttle on 03/03/2022.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        
        Text("Hello, world!")
            .padding()
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
