//
//  ContentView.swift
//  NUUP_Challenge
//
//  Created by Damaris Cortés on 03/11/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isPresented = false
    var body: some View {
        ZStack{
            Color(red: 245/255, green: 195/255, blue: 165/255)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image( "NUUPLOGO").resizable().frame(width: 300, height: 300)
                    .clipShape(Circle()).padding(20)
                VStack{
                    Text("Personas uniendo personas")
                        .font(.title)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                    Text("Unete a nuestra comunidad \n para tener un mundo mejor")
                        .font(.title3).multilineTextAlignment(.center).foregroundColor(.gray)
                        .padding()
                }
                .padding()
                
                
                Button{
                    isPresented = true
                    
                }label: {
                    Text("Comenzar").modifier(RoudedColorButton(color: .green))
                }
                .padding(.top, 4.0)
                
                .fullScreenCover(isPresented: $isPresented, content:{ LogInView()
                })
                
            }
            .padding()
            .background(Color(red: 245/255, green: 195/255, blue: 165/255))
        }
        
    }
}

#Preview {
    ContentView()
}
