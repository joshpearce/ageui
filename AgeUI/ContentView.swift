//
//  ContentView.swift
//  Todo
//
//  Created by Jordan Singer on 7/6/20.
//

import SwiftUI

struct Task: Hashable, Identifiable {
    var id = UUID()
    var title: String
    var completed = false
}

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            SidebarView()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
