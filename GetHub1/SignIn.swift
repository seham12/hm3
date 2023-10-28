//
//  SignIn.swift
//  GetHub1
//
//  Created by Seham almarshedi on 11/04/1445 AH.
//

import SwiftUI

struct SignIn: View {
    var body: some View {
        var name = ""
        var email = ""
        VStack{
            TextField("Email",text: .constant(""))
            SecureField("Password",text: .constant(""))
            
        }
        
        
        .navigationTitle("Sign in")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}
    struct SignIn_PreviewProvider{
        static var previews: some View {
            SignIn()
        }
    }
