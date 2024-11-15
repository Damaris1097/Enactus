//
//  Comunidades.swift
//  NUUP_Challenge
//
//  Created by Damaris Cortés on 04/11/24.
//

import Foundation
import SwiftUI
import Kingfisher

struct Comunidades: View {
    //search field declare
    
   
    //load dummy data here
    var postDatas:[PostResponse] = postData
    @State private var isSubscribed = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Spacer()
                LazyVStack{
                    HStack{
                        HStack {
                            Image("Ana").resizable().frame(width: 33.0, height: 32.0)
                            
                            Text("Ana")
                                .font (.footnote)
                                .fontWeight (.semibold)
                            +
                            
                            Text(" Le interesa participar en este reto ")
                                .font (.footnote)
                        }
                        Spacer()
                        Image (systemName: "ellipsis")
                            .foregroundStyle(.black.opacity(0.7))
                    }
                    .padding(.horizontal, 12)
                    // divider
                    Divider()
                        .padding(.horizontal, 12)
                    //Profile and following text
                    HStack (alignment: . top){
                        // profile
                        HStack{
                            Image("Calles") .resizable().frame(width: 60.0, height: 60.0)
                            VStack (alignment: .leading, spacing:3){
                                HStack{
                                    
                                    Text("Calles Limpias ")
                                        .font(.subheadline)
                                        .fontWeight (.semibold)
                                    
                                    +
                                    
                                    Text(" - 3rd  ")
                                        .font(.footnote)
                                
                                }
                            }
                        }
                        
                        Spacer()
                        Button(action: {
                                            isSubscribed.toggle()
                                        }) {
                                            HStack(spacing: 5) {
                                                Image(systemName: isSubscribed ? "checkmark" : "plus")
                                                    .resizable()
                                                    .scaledToFill()
                                                    .frame(width: 13, height: 13)
                                                    .fontWeight(.semibold)
                                                
                                                Text(isSubscribed ? "Suscrito" : "Suscribirse")
                                                    .font(.subheadline)
                                                    .fontWeight(.semibold)
                                            }
                            .foregroundStyle (Color(red: 0.831, green: 0.443, blue: 0.283, opacity: 0.921))
                            
                        }
                        
                    }
                    .padding(.horizontal, 12)
                    
                    //caption
                    Text ("Calles limpias te invita a ser participe de este reto que consiste en limpiar las calles de la ciudad de México este fin de semana")
                        .font (.footnote)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 12)

                        VStack (alignment:.leading){
                            Image("im1")
                                .scaledToFill()
                                .frame(width: .infinity, height:150)
                                .clipped ()
                            Text ("A limpiar se ha dicho")
                                .fontWeight(.semibold)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.horizontal, 12)
                        }
                    HStack{
                        HStack {
                            Image("Sara").resizable().frame(width: 33.0, height: 32.0)
                            
                            Text("Sara")
                                .font (.footnote)
                                .fontWeight (.semibold)
                            +
                            
                            Text(" Le interesa participar en este reto ")
                                .font (.footnote)
                        }
                        Spacer()
                        Image (systemName: "ellipsis")
                            .foregroundStyle(.black.opacity(0.7))
                    }
                    .padding(.horizontal, 12)
                    // divider
                    Divider()
                        .padding(.horizontal, 12)
                    //Profile and following text
                    HStack (alignment: . top){
                        // profile
                        HStack{
                            Image("aguaviva") .resizable().frame(width: 60.0, height: 60.0)
                            VStack (alignment: .leading, spacing:3){
                                HStack{
                                    
                                    Text("AguaViva")
                                        .font(.subheadline)
                                        .fontWeight (.semibold)
                                    
                                    +
                                    
                                    Text(" - 3rd  ")
                                        .font(.footnote)
                                
                                }
                            }
                        }
                        
                        Spacer()
                        Button {
                            // follow button action
                        } label: {
                            HStack (spacing: 5){
                                Image (systemName: "plus")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 13, height: 13)
                                    .fontWeight (.semibold)
                                
                                Text ("Suscribirse")
                                    .font (.subheadline)
                                    .fontWeight(.semibold)
                            }
                            .foregroundStyle (Color(red: 0.831, green: 0.443, blue: 0.283, opacity: 0.921))
                            
                        }
                        
                    }
                    .padding(.horizontal, 12)
                    
                    //caption
                    Text ("Agua Viva te invita a ser participe de este reto que consiste ahorrar lo más posible de agua la hacer tus tareas domesticas diaraias.")
                        .font (.footnote)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 12)

                        VStack (alignment:.leading){
                            Image("im10")
                                .scaledToFill()
                                .frame(width: .infinity, height:150)
                                .clipped ()
                            Text ("Ahorra y gana")
                                .fontWeight(.semibold)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.horizontal, 12)
                        }
                    HStack{
                        HStack {
                            Image("Jose").resizable().frame(width: 33.0, height: 32.0)
                            
                            Text("José")
                                .font (.footnote)
                                .fontWeight (.semibold)
                            +
                            
                            Text(" Le interesa participar en este reto ")
                                .font (.footnote)
                        }
                        Spacer()
                        Image (systemName: "ellipsis")
                            .foregroundStyle(.black.opacity(0.7))
                    }
                    .padding(.horizontal, 12)
                    // divider
                    Divider()
                        .padding(.horizontal, 12)
                    //Profile and following text
                    HStack (alignment: . top){
                        // profile
                        HStack{
                            Image("semillasverdes") .resizable().frame(width: 60.0, height: 60.0)
                            VStack (alignment: .leading, spacing:3){
                                HStack{
                                    
                                    Text("Semillas Verdes ")
                                        .font(.subheadline)
                                        .fontWeight (.semibold)
                                    
                                    +
                                    
                                    Text(" - 3rd  ")
                                        .font(.footnote)
                                
                                }
                            }
                        }
                        
                        Spacer()
                        Button {
                            // follow button action
                        } label: {
                            HStack (spacing: 5){
                                Image (systemName: "plus")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 13, height: 13)
                                    .fontWeight (.semibold)
                                
                                Text ("Suscribirse")
                                    .font (.subheadline)
                                    .fontWeight(.semibold)
                            }
                            .foregroundStyle (Color(red: 0.831, green: 0.443, blue: 0.283, opacity: 0.921))
                            
                        }
                        
                    }
                    .padding(.horizontal, 12)
                    
                    //caption
                    Text ("Semillas Verdes te invita a plantar árboles este fin de semana en los parques de la alcaldía Coyoacaán.")
                        .font (.footnote)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 12)

                        VStack (alignment:.leading){
                            Image("image6")
                                .scaledToFill()
                                .frame(width: .infinity, height:150)
                                .clipped ()
                            Text ("Un nuevo árbol, un nuevo suspiro")
                                .fontWeight(.semibold)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.horizontal, 12)
                        }
                    HStack{
                        HStack {
                            Image("Lucia").resizable().frame(width: 33.0, height: 32.0)
                            
                            Text("Lucía")
                                .font (.footnote)
                                .fontWeight (.semibold)
                            +
                            
                            Text(" Le interesa participar en este reto ")
                                .font (.footnote)
                        }
                        Spacer()
                        Image (systemName: "ellipsis")
                            .foregroundStyle(.black.opacity(0.7))
                    }
                    .padding(.horizontal, 12)
                    // divider
                    Divider()
                        .padding(.horizontal, 12)
                    //Profile and following text
                    HStack (alignment: . top){
                        // profile
                        HStack{
                            Image("Recycle") .resizable().frame(width: 60.0, height: 60.0)
                            VStack (alignment: .leading, spacing:3){
                                HStack{
                                    
                                    Text("Recycle Comunity")
                                        .font(.subheadline)
                                        .fontWeight (.semibold)
                                    
                                    +
                                    
                                    Text(" - 3rd  ")
                                        .font(.footnote)
                                
                                }
                            }
                        }
                        
                        Spacer()
                        Button {
                            // follow button action
                        } label: {
                            HStack (spacing: 5){
                                Image (systemName: "plus")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 13, height: 13)
                                    .fontWeight (.semibold)
                                
                                Text ("Suscribirse")
                                    .font (.subheadline)
                                    .fontWeight(.semibold)
                            }
                            .foregroundStyle (Color(red: 0.831, green: 0.443, blue: 0.283, opacity: 0.921))
                            
                        }
                        
                    }
                    .padding(.horizontal, 12)
                    
                    //caption
                    Text ("RecycleComunity te invita a participar en este reto de reciclar todas tus basuras.")
                        .font (.footnote)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 12)

                        VStack (alignment:.leading){
                            Image("ropa_donada")
                                .scaledToFill()
                                .frame(width: .infinity, height:150)
                                .clipped ()
                            Text ("De vuelta a la vida")
                                .fontWeight(.semibold)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.horizontal, 12)
                        }
                    HStack{
                        HStack {
                            Image("Marcos").resizable().frame(width: 33.0, height: 32.0)
                            
                            Text("Marcos")
                                .font (.footnote)
                                .fontWeight (.semibold)
                            +
                            
                            Text(" Le interesa participar en este reto ")
                                .font (.footnote)
                        }
                        Spacer()
                        Image (systemName: "ellipsis")
                            .foregroundStyle(.black.opacity(0.7))
                    }
                    .padding(.horizontal, 12)
                    // divider
                    Divider()
                        .padding(.horizontal, 12)
                    //Profile and following text
                    HStack (alignment: . top){
                        // profile
                        HStack{
                            Image("solucionVerde") .resizable().frame(width: 60.0, height: 60.0)
                            VStack (alignment: .leading, spacing:3){
                                HStack{
                                    
                                    Text("Solución verde ")
                                        .font(.subheadline)
                                        .fontWeight (.semibold)
                                    
                                    +
                                    
                                    Text(" - 3rd  ")
                                        .font(.footnote)
                                
                                }
                            }
                        }
                        
                        Spacer()
                        Button {
                            // follow button action
                        } label: {
                            HStack (spacing: 5){
                                Image (systemName: "plus")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 13, height: 13)
                                    .fontWeight (.semibold)
                                
                                Text ("Suscribirse")
                                    .font (.subheadline)
                                    .fontWeight(.semibold)
                            }
                            .foregroundStyle (Color(red: 0.831, green: 0.443, blue: 0.283, opacity: 0.921))
                            
                        }
                        
                    }
                    .padding(.horizontal, 12)
                    
                    //caption
                    Text ("Solución verde te invita a participar en este reto por una playa más limpia ")
                        .font (.footnote)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 12)

                        VStack (alignment:.leading){
                            Image("image1")
                                .scaledToFill()
                                .frame(width: .infinity, height:150)
                                .clipped ()
                            Text ("Sea clean challenge ")
                                .fontWeight(.semibold)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.horizontal, 12)
                        }
                }
            }
            .background (Color.white)
            
        }
    }
}
#Preview{
    Comunidades()
}
