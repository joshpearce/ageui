//
//  SidebarView.swift
//  AgeUI
//
//  Created by Joshua Pearce on 4/30/21.
//

import SwiftUI

struct SidebarView: View {
    @State var selection: Int? = 0
    var body: some View {
        List {
            Text("Menu").font(.caption)
                .foregroundColor(.secondary)
            NavigationLink(destination: EncryptContentView(), tag: 0, selection: self.$selection) {
                Label("Encrypt", systemImage:"lock.fill")
            }
            NavigationLink(destination: DecryptContentView(), tag: 1, selection: self.$selection) {
                Label("Decrypt", systemImage:"lock.open.fill")
            }
            Divider()
            NavigationLink(destination: MyKeysContentView(), tag: 2, selection: self.$selection) {
                Label("My Keys", systemImage:"key.fill")
            }
            NavigationLink(destination: ContactsContentView(), tag: 3, selection: self.$selection) {
                Label("Contacts", systemImage:"person.fill")
            }
            Divider()
            NavigationLink(destination: SettingsContentView(), tag: 4, selection: self.$selection) {
                Label("Settings", systemImage:"gear")
            }
        }.onAppear {
            self.selection = 4 // TODO: show settings if configuration assumptions are bad
        }
        .listStyle(SidebarListStyle())
        .frame(minWidth: 100, idealWidth: 150, maxWidth: 200, maxHeight: .infinity)
        
    }
}

struct SidebarView_Previews: PreviewProvider {
    static var previews: some View {
        SidebarView()
    }
}
