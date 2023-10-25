//
//  ExploerView.swift
//  GetHub1
//
//  Created by Seham almarshedi on 09/04/1445 AH.
//

import SwiftUI
struct ExploerView: View {
    var body: some View {
        
        ZStack{
            Color.black
            
                .ignoresSafeArea(.all)
            
            ScrollView{
                Text("Explore")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
                    .fontWeight(.bold)
                VStack{
                    
                    
                    Text("Star")
                        .font(.body)
                        .foregroundColor(Color.white)
                    
                    //.frame(width: 100.0, height: 100.0)
                        .background(RoundedRectangle(cornerRadius:30)
                            .frame(width: 300, height:60 )
                            .foregroundColor(Color.gray))
                        .padding()
                            
                                    Spacer()

                   // Image("Image2")
                      //  .resizable()
                        //.frame(width: 350 , height:450)
                            
                                   
                    
                    Text("Star")
                        .font(.body)
                        .foregroundColor(Color.white)
                    
                    //.frame(width: 100.0, height: 100.0)
                        .background(RoundedRectangle(cornerRadius:30)
                            .frame(width: 300, height:60 )
                            .foregroundColor(Color.gray))
                        .padding()
                    
                    
                         }}}}
    
    struct ShowExploerView: PreviewProvider {
        static var previews: some View {
            ExploerView()
        }}
}

        

  
