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
       .bold()
                
                HStack{
                                
                    Button(action:{}) {
                        Text("Inbox")
                        Image(systemName: "chevron.down")
                        
                                }
                                    .frame(width: 100,height: 30)
                                    .font(.caption)
                                    .foregroundColor(.white)
                                    .background(Color.gray.opacity(0.4))
                                    .cornerRadius(30)
                                    .padding(3)
                                    .padding(.leading,5)
                                
                    Button(action:{}) {
                                    Text("Unread")
                                    Image(systemName: "chevron.down")
                                }
                                    .frame(width: 100,height: 30)
                                    .font(.caption)
                                    .foregroundColor(.white)
                                    .background(Color.gray.opacity(0.4))
                                    .cornerRadius(30)
                                    .padding(3)
                               
                    Button(action:{}) {
                        Text("Repository")
                        Image(systemName: "chevron.down")
                    }
                                    .frame(width: 150,height: 30)
                                    .font(.caption)
                                    .foregroundColor(.white)
                                    .background(Color.gray.opacity(0.4))
                                    .cornerRadius(30)
                                    .padding(3)
                                Spacer()
                                
                            }
                            Divider()
                                .background(.white.opacity(0.2))
                                
                           Image("Image1")
                                .resizable()
                                .frame(width: 400,height: 400)
                                .scaledToFill()
                            
                            Text("All caught up!")
                                .foregroundColor(.white)
                                .font(.title)
                                .fontWeight(.bold)
                            Text("Take a break, write some code, and do what you do best.")
                                .foregroundColor(.gray)
                                .font(.title3)
                                .multilineTextAlignment(.center)
                                .padding(.horizontal)
                         
                        }
                    }
                        }
            }
struct ShowInboxView: PreviewProvider {
    static var previews: some View {
        InboxView()
    }
}




