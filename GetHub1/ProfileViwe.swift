//
//  ProfileViwe.swift
//  GetHub1
//
//  Created by Seham almarshedi on 11/04/1445 AH.
//


import SwiftUI


struct ProfilAnyData:Identifiable {
     let id = UUID()
    let titil :String
      var subtitil = ""
    let systemImage:String
   }
struct ProfilViwe: View {
    
      let row1 :Array<ProfilAnyData> = [ ProfilAnyData (titil:"Riyadh",systemImage: "mappin.circle"),
    ProfilAnyData (titil:"",systemImage: "bulding") ]
    let row12 :Array<ProfilAnyData> = [ ProfilAnyData (titil:"Riyadh",systemImage: "mappin.circle"),
        ProfilAnyData (titil:"Riyadh",systemImage: "mappin.circle") ]
    let row3 :Array<ProfilAnyData> = [ ProfilAnyData (titil:"Riyadh",systemImage: "mappin.circle"),
        ProfilAnyData (titil:"Riyadh",systemImage: "mappin.circle") ]
   
    var body: some View {
        ScrollView{
            HStack{
                Circle()
                    .fill(.blue)
                    .frame(width: 8, height: 10)
                VStack{
                    Text("seham")
                        .bold()
                        .font(.title2)
                    // alignment: .leading)
                    Text("seham")
                        .font(.title3)
                        .foregroundColor(Color(uiColor: .secondaryLabel))
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            } .padding(.horizontal)
            
            Text("i failed the turing test!")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
            
            
            
        }}}

        struct ProfileViwe_PreviewProvider{
            static var previews: some View {
                ProfilViwe()
            }
        }



