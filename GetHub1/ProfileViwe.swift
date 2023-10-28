//
//  ProfileViwe.swift
//  GetHub1
//
//  Created by Seham almarshedi on 11/04/1445 AH.
//


import SwiftUI

struct ProfileData:Identifiable {
    let id = UUID()
    let titel :String
    var subTitil = ""
    let systemImage:String
   }
struct RowData2: Identifiable {
    let id = UUID()
    let titel: String
    let leadingImageName: String
    let leadingImageForegroundColor: Color = .white
    let leadingImageBackgroundColor: Color
}

struct  ProfileViwe {
    let ListRows: Array<RowData> = [RowData(title: "Repositories",leadingImageName: "book.closed",leadingImageBackgroundColor:.black),
                                    RowData(title: "Started",leadingImageName: "star",leadingImageBackgroundColor: .yellow),
                                    RowData(title: "Organizations",leadingImageName: "building.2",leadingImageBackgroundColor: .orange)]
    
    
        let row1 :Array<ProfileData> = [ ProfileData (titel:"@ssmf", subTitil: "" ,systemImage: "bulding"),
                                         ProfileData (titel: "Riyad", subTitil:"" , systemImage: "mappin.circle")]
        let row2:Array<ProfileData> = [ProfileData(titel:"lab.sa" , subTitil:"", systemImage: "link"),
                                       ProfileData(titel:"Developer Program Member" ,subTitil:"",systemImage:"book.page") ]
        
        let row3 :Array<ProfileData> = [ ProfileData (titel:"13 Followers  •", subTitil:"3 Following", systemImage:"person")]
        
    var body: some View {
        
        
        ScrollView{
            HStack{
                Circle()
                    .fill(.blue)
                    .frame(width: 8, height: 10)
                VStack{
                    Text("seham almarshedi")
                        .bold()
                        .font(.title2)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("almarshedi")
                        .font(.title3)
                        .foregroundColor(Color(uiColor: .secondaryLabel))
                    
                        .frame(maxWidth: .infinity, alignment: .leading).padding(.horizontal)
                }}
            Text("i failed the turing test!")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(4)
            
            
            HStack {
                ForEach(row1) { row in
                    
                    
                    Image(systemName: row.systemImage)
                 .foregroundColor(Color.systemGray)
                    Text(row.title)
                        .padding(.trailing)
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            HStack {
                ForEach(row2) { row in
                    Image(systemName: row.systemImage)
                        .foregroundColor(Color(.systemGray))
                    Text(row.title)
                        .padding(.trailing)
                    
                }
            }
            HStack {
                ForEach(row3) { row in
                    Image(systemName: row.systemImage)
                        .foregroundColor(Color(.systemGray))
                    Text(row.title)
                    Text(row.subTitle)
                        .padding(.trailing)
                }
                
                
                
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                
                Spacer()
                HStack{
                    Image(systemName: "trophy")
                        .padding()
                        .foregroundColor(Color(.systemGray))
                    
                    ZStack{
                        Image("ImageY")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 32, height: 32)
                            .offset(x: -19)
                        Image("man")
                            .resizable()
                            .frame(width: 32, height: 32)
                        Image("gImageblue")
                            .resizable()
                            .frame(width: 32, height: 32)
                            .offset(x: 19)
                        
                            .aspectRatio(contentMode: .fit)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
            VStack {
                
                ForEach(ListRows) { row in
                    ListRows(row: row)
                    if ListRows.last?.id != row.id {
                        Divider()
                            .padding(.leading)
                    }
                }
                Spacer()
            } .padding(.vertical)
                .background(.white.opacity(0.75))
                .cornerRadius(8)
            
            HStack{
                Image(systemName: "pin")
                Text("Pinned")
                
            }
            .padding(1)
            .foregroundStyle(.gray)
            .frame(maxWidth: .infinity,alignment: .leading)
            
            ScrollView(.horizontal, showsIndicators: false)
            
            
            Spacer()
            HStack{
                Image("house")
                    .cornerRadius( 5)
                    .frame(width: 8*40,
                           height: 8*20
                    )
                RoundedRectangle(cornerRadius: 5)
                    .foregroundColor(.blue)
                    .frame(width: 8*40,
                           height: 8*20
                    )
                RoundedRectangle(cornerRadius: 5)
                    .foregroundColor(.cyan)
                    .frame(width: 8*40,
                           height: 8*20)
                
                
            }
            
            
            
            
        }
        func ListRows(row: RowData) -> some View {
            HStack {
                Image(systemName: row.leadingImageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .foregroundColor(row.leadingImageForegroundColor)
                    .padding(8)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .fill(row.leadingImageBackgroundColor)
                    )
                Text(row.title)
                Spacer()
                Image(systemName: "chevron.right")
            }
            .padding(.horizontal)
        }
    }}
struct ProfileViwe_PreviewProvider{
            static var previews: some View {
                ProfileViwe()
            }
        }



