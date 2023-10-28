//
//  AuthViwe.swift
//  GetHub1
//
//  Created by Seham almarshedi on 11/04/1445 AH.
//

import SwiftUI
struct LoginView1 : Identifiable{
    let id = UUID()
    let leadingImageName:String
    let title :String
    let color :Color
    let backgroundColor:Color
    
}
let LoginAuth : Array<LoginView1> = [
    
    .init(leadingImageName: "google.log", title: "Continue with Google" , color: .black, backgroundColor: .white) ,
 
        .init(leadingImageName : "apple.logo", title:"sigin with apple", color: .white, backgroundColor: .black ),

        .init (leadingImageName: "facebook.logo", title: "Continue with Facebook", color: .white, backgroundColor: .blue),
    
        .init (leadingImageName: "gmail.log", title: "Login in with emaile", color: .white, backgroundColor: .pink),
     
        .init(leadingImageName: "", title:"New to Patreon? Sign UP" , color: .black, backgroundColor: .white.opacity(0.5))
           ]

struct AuthViwe: View {
    
    
    var body: some View {
        VStack{
            VStack{
                Text("GetHub")
                    .font(.largeTitle)
                    .bold()
                
            }
            .frame(maxHeight: .infinity)
            
            
            
            func makeLoginButton(option: LoginView1)-> some View{
                NavigationLink(
                    destination:{
                        Text(option.title)},
                    label: {
                        ZStack{
                            HStack{
                                Image(systemName: "swift")
                                Spacer()
                            }
                            Text(option.title)
                                .bold()
                                .foregroundStyle(option.titleColor)
                        }
                        
                        
                        
                        .padding()
                        
                        VStack(spacing:8){
                            ForEach(LoginView1){ option in
                                makeLoginButton(option: option)
                                
                                if LoginView1.last?.id == option.id{
                                    SignUpViwe()
                                }
                                else{
                                    Text(option.title)}
                                
                            }
                            NavigationLink(
                                destination: {
                                    Text("option.title")
                                    SignUpView()
                                },
                                label: {
                                    ZStack{
                                        Text("option.title")
                                            .bold()
                                            .underline()
                                            .foregroundStyle(.gray)
                                            .padding()
                                            .frame(maxWidth:.infinity)
                                        
                                    }})
                            .frame(maxWidth: .infinity)
                            .background(RoundedRectangle(cornerRadius: 16))
                            .stroke(option.borderColor, lineWidth: 2)
                            .fill(option.backgroundColor)
                            .clipped().containerShape(RoundedRectangle(cornerRadius: 16))
                            .padding(.horizontal)
                            
                            
                            Text("By clicking Sign Up,Countinue with Google, or Continue with Facebook,you agree to Patreon's [Terms of Use](https://www.google.com), [Privacy Policy](https://www.google.com), and [Cookie Policy](https://www.google.com).")
                            
                                .font(footnote)
                                .multilineTextAlignment(.center)
                                .padding(.horizontal)
                            
                            
                        }
                        
                    }
                )}}}}

struct AuthViwe_PreviewProvider{
    static var previews: some View {
        AuthViwe()
    }
}

