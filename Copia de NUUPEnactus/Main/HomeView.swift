//
//  HomeView.swift
//  NUUP_Challenge
//
//  Created by Damaris Cortés on 03/11/24.
//

import SwiftUI

struct HomeView: View {
    
    // view propetiers
    @State public var searchText: String = ""
    @State private var selectedTab = 0
    
    var body: some View {
        
        NavigationStack{
            ZStack{
                
                TabView(selection: $selectedTab){
                   Comunidades()
                        .tabItem {
                            Image(systemName: "house.circle.fill")
                                .resizable()
                                .frame(width: 5, height: 5)
                            Text("Inicio")
                                .tag(0)
                        }
                    
                    ComunitiesView()
                        .tabItem {
                            Image(systemName: "heart.circle.fill")
                                .resizable()
                                .frame(width: 5, height: 5)
                            Text("comunidad")
                                .tag(1)
                        }
                    AmigosView()
                        .tabItem {
                            Image(systemName: "person.3.sequence.fill")
                                .resizable()
                                .frame(width: 5, height: 5)
                            Text("Amigos")
                                .tag(2)
                        }
                    Profile()
                        .tabItem {
                            Image(systemName: "person.circle.fill")
                                .resizable()
                                .frame(width: 5, height: 5)
                            Text("perfil")
                                .tag(3)
                   
                        }
                    
                }
                .accentColor(Color(red: 0.451, green: 0.274, blue: 0.135))
                
                
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                // profile image
                ToolbarItem (placement: .topBarLeading){
                    ProfileImageView(profileImage: userDataCurrent.profileImage, size: 35)
                }
                //search field
                ToolbarItem (placement:.principal){
                    HStack (spacing: 10){
                        Image (systemName: "magnifyingglass")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 16, height: 16)
                            .foregroundStyle(.black.opacity(0.8))
                        
                        TextField("Search", text: $searchText)
                        
                    }.padding(.horizontal, 10)
                        .frame (height: 35)
                        .background(Color(red: 0.831, green: 0.443, blue: 0.283, opacity: 0.489))
                        .clipShape (RoundedRectangle(cornerRadius: 8))
                        .padding(.horizontal, 8)
                }
                // chat icon
                ToolbarItem (placement: .topBarTrailing){
                    Button{
                        
                    }label: {
                        Image (systemName: "ellipsis.message.fill")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 26, height: 26)
                            .foregroundStyle(Color(red: 0.831, green: 0.443, blue: 0.283, opacity: 0.921))
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
