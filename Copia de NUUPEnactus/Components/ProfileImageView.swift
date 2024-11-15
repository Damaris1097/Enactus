//
//  ProfileImageView.swift
//  NUUP_Challenge
//
//  Created by Damaris Cortés on 04/11/24.
//
import SwiftUI
import Kingfisher

struct ProfileImageView: View {
    
    let profileImage:String
    let size: CGFloat
    
    var body: some View {
        
        Image("Yo")
            .resizable()
            .scaledToFill().frame(width: size, height: size)
            .clipShape(Circle())
            .overlay (RoundedRectangle(cornerRadius: size-1).stroke(Color(red: 0.9, green: 0.624, blue: 0.456), lineWidth:6).opacity(0.3))
    }
}

#Preview {
    ProfileImageView(
        profileImage: userDataCurrent.profileImage,
        size: 40
    )
}
