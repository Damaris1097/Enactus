//
//  AmigosView.swift
//  NUUP_Challenge
//
//  Created by Damaris Cortés on 06/11/24.
//

import SwiftUI

struct AmigosView: View {
    var body: some View {
        ZStack{
            NavigationView{
                ScrollView{
                    StoryView()
                    Divider()
                    PostListView(posts:posts)
                }
                .navigationTitle("Amigos")
                .background(Color(red: 0.927, green: 0.917, blue: 0.857))
            }
        }
    }
}

#Preview {
    AmigosView()
}
