//
//  CreateAcount.swift
//  NUUP_Challenge
//
//  Created by Damaris Cortés on 03/11/24.
//

import SwiftUI

struct CreateAcount: View {
    
    @State private var isShowingPassword = false
    
    @State private var Usuario = ""
    @State private var Fullname = ""
    @State private var email = ""
    @State private var password = ""
    
    @Environment(\.dismiss) private var dismiss
    
    var isPasswordValidLength: Bool {
        return password.count >= 6
        
    }
    var isPasswordWithNumber: Bool{
        return password.contains(where: {
            $0.isNumber
        })
    }
    
    var isPasswordValid: Bool {
        return isPasswordValidLength &&
        isPasswordWithNumber
    }
    
    
    var body: some View {
        
        ZStack{
            Color(red: 245/255, green: 195/255, blue: 165/255)
                .edgesIgnoringSafeArea(.all)
            VStack {
                VStack{
                    
                    Text("Bienvenido a NUUP")
                        .font(.largeTitle)
                    
                        .fontWeight(.black)
                        .foregroundColor(Color(red: 200/255, green: 125/255, blue: 95/255))
                        .lineLimit(1)
                        .padding()
                    
                    Text("¡JUNTOS EN NUUP \n POR  EL MISMO POBJETIVO!")
                        .font(.subheadline)
                        .foregroundColor(Color(red: 109/255, green: 73/255, blue: 42/255)).fontWeight(.bold)
                        .multilineTextAlignment(.center)
                    
                    TextField("Nombre Completo", text: $Fullname)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal)
                    
                    TextField("Nombre de usuario", text: $Usuario)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal)
                    
                    TextField("Correo", text: $email)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal)
                    
                    
                    SecureField("Contraseña", text: $password)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal)
                    
                    
                    Text("Tu contraseña debe contener:")
                    VStack{
                        HStack{
                            Image(systemName: isPasswordValidLength ? "checkmark.circle.fill":"checkmark.circle").foregroundColor(isPasswordValidLength ? .green : .gray)
                            Text("Al menos 6 caracteres")
                        }
                        HStack{
                            Image(systemName: isPasswordWithNumber ? "checkmark.circle.fill":"checkmark.circle").foregroundColor(isPasswordWithNumber ? .green : .gray)
                            Text("Al menos 1 numero")
                            
                        }.font(.footnote)
                            .modifier(TextViewModifier())
                        Button( action: {
                            dismiss()
                        },label: {
                            Text("Registrarse").modifier(RoudedColorButton(color: Color(red: 76/255, green: 175/255, blue: 80/255)))
                            
                        }).opacity(isPasswordValid ? 1 : 0.6)
                            .disabled(!isPasswordValid)
                        
                        Button {
                            dismiss()
                        } label: {
                            HStack(spacing: 3) {
                                Text("¿Ya tienes una cuenta?")
                                
                                Text("Inicia sesión")
                                    .foregroundColor(.green)
                                    .fontWeight(.semibold)
                            }
                            .foregroundColor(.black)
                            .font(.footnote)
                        }
                    }
                }
                
            }
            
        }
    }
}
            
#Preview {
    CreateAcount()
}
