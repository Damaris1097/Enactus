//
//  PostCard.swift
//  NUUP_Challenge
//
//  Created by Damaris Cortés on 06/11/24.
//
import SwiftUI

struct PostCard: View {
    @State private var isLiked = false
    
    let post: Post
    var body: some View {
        
        VStack (alignment: .center) {
            HStack{
                Image(post.userProfileImage)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color(red: 0.9, green: 0.624, blue: 0.456), lineWidth:3))
                    .shadow(radius: 3)
                    .frame(width: 50, height: 50)
                VStack(alignment: .leading) {
                    Text(post.name)
                        .bold()
                    Text(post.username)
                        .font(.footnote)
                }
                Spacer()
                Image(systemName: "ellipsis")
                    .padding()
           }
            VStack {
                Image(post.postImageName)
                    .resizable()
                    .scaledToFill()
            }
            .frame(maxHeight: 400)
            .cornerRadius(0)
            
            HStack {
                Button (action: {
                    isLiked.toggle() // Cambia el estado al presionar el botón
                    print(isLiked ? "Liked" : "Unliked")

                } ) {
                    Image(systemName: isLiked ? "heart.fill" : "heart") // Cambia la imagen según el estado
                        .resizable()
                .frame(width: 23, height: 23) // Cambia el tamaño de la imagen si lo deseas
                .foregroundColor(isLiked ? .red : .black)
                        
                }
                Button {
                    print("Like")
                } label: {
                    Image(systemName: "message")
                }
                Spacer()
                
            }
            .foregroundColor(.black)
            .font(.title3)
            .padding(.horizontal, 10)
            .padding(.vertical, 5)
            
            HStack {
                           Text(post.username)
                               .bold()
                               .font(.footnote)
                           
                           Text(post.description)
                               .font(.footnote)
                               .lineLimit(1) // Limita a una sola línea
                               .truncationMode(.tail) // Agrega "..." al final si el texto es truncado
                       }
                       .padding(.horizontal, 10)
                       .padding(.top, 5)
        }
        .background(Color(red: 0.927, green: 0.917, blue: 0.857))
    }
}

#Preview {
    PostCard(post: posts[0])
}
