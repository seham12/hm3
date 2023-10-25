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
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            InboxView()
                .tabItem {
                    Image(systemName: "folder.fill")
                    Text("InboxView")
                }
            ExploerView()
                .tabItem {
                    Image(systemName: "globe.central.south.asia")
                    Text("Exploer")
                    
                }
            
        }}}
            struct ShowTabView11: PreviewProvider{
                static var previews: some View {
                    TabView11()
                }}
      
       
