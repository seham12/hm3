//
//  SiginUP.swift
//  GetHub1
//
//  Created by Seham almarshedi on 11/04/1445 AH.
//

import SwiftUI

struct SiginUP: View {
    var body: some View {
        var name = ""
        var email = ""
        var password = ""
        var nameError = "name is Empty"
        var emailError = ""
        var passwordError = ""
        
        VStack{
            
            TextField("Name",text: .constant(""))
                .padding()
                .frame(width:100 , height: 100)
                .cornerRadius(16)
                .stroke(nameError.isEmpty ? .black : .red ,lineWidth: 2)
                
            TextField("Email",text: .constant(""))
                .padding()
                .frame(width:100 , height: 100)
                .cornerRadius(16)
            SecureField("Password",text: .constant(""))
                .padding()
                .frame(width:100 , height: 100)
                .cornerRadius(16)
            SecureField("Confirm Password",text: .constant(""))
                .padding()
                .frame(width:100 , height: 100)
                .cornerRadius(16)
        }
        Spacer()
            .padding()
        HStack{
        Button(action: {
            
        }, label: {
            
            Text("SiginUP")
        }
               )}
        
        .frame(width:100 , height: 100)
        .navigationTitle("Sign up")
        .navigationBarTitleDisplayMode(.inline)
    }}
    //.navigation
struct SiginUp_PreviewProvider{
    static var previews: some View {
        SiginUP()
    }}

