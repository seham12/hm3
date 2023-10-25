//
//  InboxView.swift
//  GetHub1
//
//  Created by Seham almarshedi on 09/04/1445 AH.
//

import SwiftUI

struct InboxView: View {
    var body: some View {
        
        ZStack{
            Color.black
                .ignoresSafeArea(.all)
            VStack{
                Text("Inbox")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(.trailing,300)
                    .fontWeight(.bold)
                HStack{
                    
                    Button(action:{}) {
                        Text("Inbox")
                        
                            .fontWeight(.regular)
                            .frame(width: 80,height: 10)
                            .font(.caption)
                            .foregroundColor(.white)
                            .background(Color.white.opacity(0.2))
                            .cornerRadius(30)
                            .padding()
                        
                        
                        
                        
                        Button(action:{}) {
                            Text("Unread")
                            
                        } .fontWeight(.regular)
                            .frame(width: 80,height: 10)
                            .font(.caption)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.white.opacity(0.2))
                            .cornerRadius(30)
                        
                        
                        Button(action:{}) {
                            Text("Repository")
                            
                        }
                        .fontWeight(.regular)
                        .frame(width: 100,height: 10)
                        .font(.caption)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.white.opacity(0.2))
                        .cornerRadius(30)
                        
                        Spacer()
                        
                    }
                    
                    
                    
                    Text("All caught up!")
                        .foregroundColor(.white)
                        .font(.title)
                        .fontWeight(.bold)
                    Text("Take a break, write some code, and do what you do best.")
                        .foregroundColor(.gray)
                        .font(.title3)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                    Spacer()
                }
            }
        }}
}
    
    
    struct ShowInboxView: PreviewProvider {
        static var previews: some View {
            InboxView()
        }}
    
    
    

