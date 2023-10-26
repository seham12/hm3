//
//  TabView11.swift
//  GetHub1
//
//  Created by Seham almarshedi on 10/04/1445 AH.
//

import SwiftUI

struct TabView11: View {
    var body: some View {
        
        TabView{
            NavigationStack{
                HomeView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                NavigationStack{
                   // InboxView()
                    Text("")
                        .tabItem {
                            Label("InboxView", systemImage: "folder.fill")
                        }
                }
                NavigationStack{
                    ExploerView()
                        .tabItem {
                            
                            Label("Exploer", systemImage: "globe.central.south.asia")
                        }
                    
                }}}}
    struct TabView11_PreviewProvider{
        static var previews: some View {
            TabView11()
        }}
    
}
