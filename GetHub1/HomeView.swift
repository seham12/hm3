//
//  HomeView.swift
//  GetHub1
//
//  Created by Seham almarshedi on 09/04/1445 AH.
//

import SwiftUI
struct HomeView: View {
    var body: some View {
        
        
        ZStack{
            Color.black
                .ignoresSafeArea(.all)
            
            ScrollView{
                Text("Home")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(.trailing,250)
                
                    .bold()
                VStack{
                    (RoundedRectangle(cornerRadius:30)
                        .frame(width: 300, height: 50)
                    )
                    
                    HStack{
                        
                        Text("My Work")
                        foregroundColor(.white)
                            .font(.title3)
                            .bold()
                        
                        Spacer()
                        Image(systemName: "ellipsis")
                            .resizable()
                            .frame(width: 20,height: 3)
                            .foregroundColor(.gray)
                      
                        
                        
                        
                        
                        VStack{
                            HStack{
                                Image(systemName:"record.circle")
                                    .resizable()
                                    .frame(width: 16,height: 16)
                                    .foregroundColor(.white)
                                    .background(.green)
                                    .cornerRadius(3)
                                    .padding()
                                Text("Issues")
                                    .foregroundColor(.white.opacity(0.8))
                                Spacer()
                                
                                    
                                
                                
                            }
                            Divider()
                            
                            HStack{
                                Image(systemName: "point.bottomleft.forward.to.arrowtriangle.uturn.scurvepath.fill")
                                    .resizable()
                                    .frame(width: 16,height: 16)
                                    .foregroundColor(.white)
                                    .background(.blue)
                                    .cornerRadius(3)
                                    .padding()
                                
                                Text("Pull Requests")
                                    .foregroundColor(.white.opacity(0.8))
                                Spacer()
                                
                                
                            }
                            Divider()
                            HStack{
                                Image(systemName: "bubble.left.and.bubble.right")
                                    .resizable()
                                    .frame(width: 16,height: 16)
                                    .foregroundColor(.white)
                                    .background(.purple)
                                    .cornerRadius(3)
                                    .padding()
                                
                                Text("Discussion")
                                    .foregroundColor(.white.opacity(0.8))
                                Spacer()
                   
                                
                            }
                            Divider()
                            HStack{
                                Image(systemName: "folder")
                                    .resizable()
                                    .frame(width: 16,height: 16)
                                    .foregroundColor(.white)
                                    .background(.white.opacity(0.8))
                                    .cornerRadius(3)
                                    .padding()
                                
                                Text("Projects")
                                    .foregroundColor(.white.opacity(0.8))
                                Spacer()
                               
                            }
                            Divider()
                            HStack{
                                Image(systemName: "book.closed")
                                    .resizable()
                                    .frame(width: 16,height: 16)
                                    .foregroundColor(.white)
                                
                                    .background(.gray)
                                    .cornerRadius(3)
                                    .padding()
                                
                                Text("Repositories")
                                    .foregroundColor(.white.opacity(0.8))
                                Spacer()
                               
                            }
                            Divider()
                            HStack{
                                Image(systemName: "building.2")
                                    .resizable()
                                    .frame(width: 16,height: 16)
                                    .foregroundColor(.white)
                                
                                    .background(.orange)
                                    .cornerRadius(3)
                                    .padding()
                                
                                Text("Organization")
                                    .foregroundColor(.white.opacity(0.8))
                                Spacer()
                               
                                
                            }
                            Divider()
                            HStack{
                                Image(systemName: "star")
                                    .resizable()
                                    .frame(width: 16,height: 16)
                                    .foregroundColor(.white)
                                    .background(.yellow)
                                    .cornerRadius(3)
                                    .padding()
                                Text("starred")
                                    .foregroundColor(.white)
                                    .foregroundColor(.white.opacity(0.8))
                                Spacer()
                               
                                
                            }
                            
                        }
                       
                        .background(
                            
                            RoundedRectangle(
                                
                                cornerRadius: 16,
                                style: .continuous
                            )
                            .fill(.white.opacity(0.1))
                            
                            
                        )
                        HStack{
                            Text("Favorites")
                            
                                .font(.title)
                                .foregroundStyle(.white)
                            Spacer()
                            Image(systemName: "ellipsis")
                                .resizable()
                                .frame(width: 18,height: 3)
                                .foregroundColor(.gray)
                            
                        }
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.white.opacity(0.2))
                                .padding(.horizontal)
                                .frame( height: 220 )
                            
                            VStack{
                                Text("Add favorite repositories here to have quick access at any time, without having to search")
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                                    .padding(.horizontal)
                                    .padding(.top)
                                
                                
                            }
                        }
                        
                    }
                    Spacer()
                }
                
                
            }
        }}
    struct ShowHomeView: PreviewProvider {
        static var previews: some View {
          HomeView()
        }}
}
