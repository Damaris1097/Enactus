//
//  LogInView.swift
//  NUUP_Challenge
//
//  Created by Damaris Cortés on 03/11/24.
//

import SwiftUI

struct LogInView: View {
    @State private var Usuario = ""
    @State private var password = ""
    
    var body: some View {
        NavigationView {
            ZStack{
                Color(red: 245/255, green: 195/255, blue: 165/255)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    
                    Text("NUUP")
                        .font(.largeTitle)
                    
                        .fontWeight(.black)
                        .foregroundColor(Color(red: 200/255, green: 125/255, blue: 95/255))
                        .lineLimit(1)
                        .padding()
                    
                    Text("Comencemos")
                        .font(.title3)
                        .foregroundColor(Color(red: 109/255, green: 73/255, blue: 42/255)).fontWeight(.bold)
                    
                    Text("Bienvenid@ a NUUP una aplicación que nos conecta a todos")
                        .font(.headline).foregroundColor(Color(red: 245/255, green: 245/255, blue: 245/255))
                        .multilineTextAlignment(.center)
                    
                        .padding()
                    VStack{
                        TextField("Usuario", text: $Usuario)
                            .padding()
                            .background(Color(.systemGray6))
                            .cornerRadius(10)
                            .padding(.horizontal)
                        
                        SecureField("Contrasseña", text: $password)
                            .padding()
                            .background(Color(.systemGray6))
                            .cornerRadius(10)
                            .padding(.horizontal)
                    }.modifier(TextViewModifier())
                    
                    HStack {
                        Spacer()
                        
                        Button("¿Olvidaste tu contraseña?") {
                            // Handle forgot password action
                            
                        }
                    }
                    
                        .padding()
                  
                    HStack{
                        
                        NavigationLink (destination:{
                            CreateAcount()
                                .navigationBarBackButtonHidden()
                            
                        }, label: {
                            
                            Text("Registarse").modifier(RoudedColorButton(color:Color(red: 200/255, green: 125/255, blue: 95/255)))
                        })
                        
                        NavigationLink (destination:{
                           HomeView()
                                .navigationBarBackButtonHidden()
                        }, label: {
                            
                            Text("Iniciar sesión").modifier(RoudedColorButton(color:Color(red: 76/255, green: 175/255, blue: 80/255)))
                        })
                        
                        
                    }
                }
            }
        }
    }
    
}




#Preview {
    LogInView()
}
