//
//  PostListView.swift
//  NUUP_Challenge
//
//  Created by Damaris Cortés on 06/11/24.
//

import SwiftUI

struct PostListView: View {
    let posts: [Post]
    var body: some View {
        ZStack {
            VStack {
                ForEach(posts) { post in
                    PostCard(post: post)
                        .listRowInsets(EdgeInsets())
                        .listRowSeparator(.hidden)
                        .padding(.vertical, 7)
                }
            }
        }
        .listStyle(.plain)
    }
}

