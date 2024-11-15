//
//  Profile.swift
//  NUUP_Challenge
//
//  Created by Damaris Cortés on 04/11/24.
//


import SwiftUI
import Foundation

struct Profile: View {
    var body: some View {
        ZStack{
            NavigationStack{
                ScrollView{
                    LazyVStack{
                        Divider()
                        VStack{
                            Image("Yo")
                                .resizable()
                                .clipShape(Circle())
                            .overlay(Circle().stroke(Color(red: 0.9, green: 0.624, blue: 0.456), lineWidth:3))
                            
                            Text("Lucía Fernández")
                            Text("lucia.fernandez@example.com")
                            Divider()
                            Text("Mis Posts")
                                .font(.title2)
                                .fontWeight(.bold)
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack {
                                    MisPost(
                                        title: "#Voluntariado",
                                        imageName: "im1"
                                    )
                                    MisPost(
                                        title: "#Voluntariado",
                                        imageName: "im2"
                                    )
                                    MisPost(
                                        title: "#Voluntariado",
                                        imageName: "im3"
                                    )
                                    MisPost(
                                        title: "#Voluntariado",imageName:"im4"
                                    )
                                }
                                Divider()
                                
                            }
                            HStack{
                                HStack{
                                    Image(systemName: "medal.star.fill").foregroundColor(.brown)
                                    Text("Recompensas")
                                    
                                }.frame(width: 250 , height: 2)
                                    .padding()
                                    .background(Color.white)//rosa
                                    .cornerRadius(10)
                            }
                            HStack{
                                Image(systemName: "figure.2.circle").foregroundColor(.brown)
                                Text("Mis comunidades")

                            }.frame(width: 250 , height: 2)
                                .padding()
                                .background(Color.white)//rosa
                                .cornerRadius(10)
                            HStack{
                                Image(systemName: "gearshape.fill").foregroundColor(.brown)
                                Text("Ajustes")
                                
                            }.frame(width: 250 , height: 2)
                                .padding()
                                .background(Color.white)//rosa
                                .cornerRadius(10)
                            HStack{
                                Image(systemName: "rectangle.portrait.and.arrow.forward").foregroundColor(.white)
                                Text("Log Out").font(.headline).fontWeight(.bold).foregroundColor(.white)
                            }.frame(width: 250 , height: 2)
                                .padding()
                                .background(Color(red: 0.916, green: 0.73, blue: 0.651))//rosa
                                .cornerRadius(10)
                        }
                        
                    }.navigationTitle("Mi perfil")
                }
                .background(Color(red: 0.925, green: 0.917, blue: 0.857))
              
            }
        }
    }
}

#Preview {
    Profile()
}

struct MisPost: View {
    
    let title: String
    let imageName: String
   
    var body: some View {
        VStack(alignment: .leading) {
            VStack{
                Image(imageName) // Carga la imagen desde Assets
                    .resizable() // Permite que la imagen sea redimensionable
                    .scaledToFit() // Mantiene la relación de aspecto
                    .frame(height: 150) // Establece la altura de la imagen
                    .cornerRadius(10)
                Text(title)
                    .font(.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 5)
                    .cornerRadius(10)
            }
            .frame(width: 150 , height: 170)
            .padding()
            .background(Color(red: 0.916, green: 0.73, blue: 0.651))//rosa
            .cornerRadius(20)
        }
    }
}

struct Ajustes: View {
    
    let title: String
    let ImageName : String

    var body: some View {
        VStack(alignment: .leading) {
            VStack{
                Image(ImageName) // Carga la imagen desde Assets
                    .resizable() // Permite que la imagen sea redimensionable
                    .scaledToFit() // Mantiene la relación de aspecto
                    .frame(height: 150) // Establece la altura de la imagen
                    .cornerRadius(10)
                Text(title)
                    .font(.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 5)
                    .cornerRadius(10)
            }
            .frame(width: 150 , height: 170)
            .padding()
            .background(Color(red: 0.916, green: 0.73, blue: 0.651))//rosa
            .cornerRadius(20)
        }
    }
}
