//
//  ComunitiesView.swift
//  NUUP_Challenge
//
//  Created by Damaris Cortés on 05/11/24.
//
import SwiftUI

struct ComunitiesView: View {
    var body: some View {
        ZStack {
            NavigationStack {
                ScrollView {
                    LazyVStack {
                        VStack {
                            Spacer()
                            HStack(spacing: 15) {
                                Text("Deportiva")
                                    .font(.title3)
                                    .multilineTextAlignment(.center)
                            }
                            .frame(width: 500, height: 45)
                            .background(Color(red: 0.916, green: 0.73, blue: 0.651))
                            Divider()
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack {
                                    NewsView(
                                        title: "Agua Viva",
                                        url:  "https://www.aguavia.com",
                                        imageName: "aguaviva"
                                    )
                                    NewsView(
                                        title: "Empatia en grupo",
                                        url:  "https://www.Aguaviva.com.mx",
                                        imageName: "empatiaengrupo"
                                    )
                                    NewsView(
                                        title: "Semillas verdes",
                                        url:  "https://www.semillasverdes.com.mx/metropoli/",
                                        imageName: "semillasverdes"
                                    )
                                }
                                .padding(.horizontal)
                            }
                            Spacer()
                            Divider()
                            HStack {
                                Text("Social")
                                    .font(.title3)
                                    .multilineTextAlignment(.center)
                            }
                            .frame(width: 500, height: 45)
                            .background(Color(red: 0.916, green: 0.73, blue: 0.651))
                            Divider()
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 15) {
                                    NewsView(
                                        title: "SUEMA",
                                        url:  "https://www.suema.com.mx",
                                        imageName: "Suema"
                                    )
                                    NewsView(
                                        title: "Clean Tech",
                                        url:  "https://www.cleantech.com",
                                        imageName: "Clean"
                                    )
                                    NewsView(
                                        title: "Construir Verde",
                                        url:  "https://www.construirverde.com.mx",
                                        imageName: "ConstruirVerde"
                                    )
                                }
                                .padding(.horizontal)
                            }
                            Spacer()
                            Divider()
                            HStack {
                                Text("Cultural")
                            }
                            .frame(width: 500, height: 45)
                            .background(Color(red: 0.916, green: 0.73, blue: 0.651))
                            Divider()
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 15) {
                                    NewsView(
                                        title: "Madre Tierra",
                                        url:  "https://www.madreTierra.com.mx/",
                                        imageName: "Tierra"
                                    )
                                    NewsView(
                                        title: "Solución Verde",
                                        url:  "https://www.SolucionVerde.com.mx",
                                        imageName: "solucionVerde"
                                    )
                                    NewsView(
                                        title: "Las limpias",
                                        url: "https://www.LasLimpias.com.mx",
                                        imageName: "Limpias"
                                    )
                                }
                                .padding(.horizontal)
                                Spacer()
                            }
                        }
                    }
                }
                .navigationTitle("Más comunidades")
                .background(Color(red: 0.925, green: 0.917, blue: 0.857)
                    .edgesIgnoringSafeArea(.all))
            }
        }
    }
}

#Preview {
    ComunitiesView()
}

struct NewsView: View {
    let title: String
    let url: String
    let imageName: String
    
    @State private var isJoined = false  // Variable de estado para rastrear si se unió o no
    
    var body: some View {
        VStack(alignment: .leading) {
            ScrollView {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                    .cornerRadius(10)
                
                Text(title)
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 5)
                    .cornerRadius(10)
                
                Text(url)
                    .font(.headline)
                    .foregroundColor(Color(hue: 0.106, saturation: 0.864, brightness: 0.424))
                    .padding(.bottom, 5)
                    .cornerRadius(10)
                
                Button(action: {
                    isJoined.toggle()  // Cambia el estado cuando se presiona el botón
                }) {
                    Text(isJoined ? "Unido" : "Unirse")  // Cambia el texto según el estado
                }
                .modifier(RoudedColorButton(color: Color(red: 200/255, green: 125/255, blue: 95/255)))
            }
        }
        .frame(width: 250, height: 250)
        .padding()
        .background(Color(red: 0.916, green: 0.73, blue: 0.651))
        .cornerRadius(12)
        .shadow(color: .gray.opacity(0.4), radius: 5, x: 0, y: 4)
    }
}
