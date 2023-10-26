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
            
            ScrollView{
                Text("Explore")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .fontWeight(.bold)
                VStack{
                    
                    
                    Text("Star")
                        .font(.body)
                        .foregroundColor(Color.white)
                        .background(RoundedRectangle(cornerRadius:20)
                            .padding()
                            .frame(width: 500, height:100 ))
                        .font(.body)
                        .padding()
                        .foregroundColor(Color.gray.opacity(0.3))
                        .padding()
                            
                                    Spacer()

                    Image("Image")
                       .resizable()
                        .frame(width: 600 , height:450)
                    
                    Spacer()

                                   
                    
                    Text("Star")
                        .font(.body)
                        .foregroundColor(Color.white)
                        .background(RoundedRectangle(cornerRadius:20)
                            .padding()
                            .frame(width: 500, height:100 ))
                        .font(.body)
                        .padding()
                        .foregroundColor(Color.gray.opacity(0.3))
                        .padding()
                    
                    
                                    }}}}
    }

    
    struct ShowExploerView: PreviewProvider {
        static var previews: some View {
            ExploerView()
        }}


        

  
