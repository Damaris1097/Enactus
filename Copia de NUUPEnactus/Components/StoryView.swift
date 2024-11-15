//
//  StoryView.swift
//  NUUP_Challenge
//
//  Created by Damaris Cortés on 06/11/24.
//

import SwiftUI

struct Story: Identifiable {
    var id = UUID ()
    var imageName: String
}

struct StoryView: View {
    let stories: [Story] = (1...6).map {Story (imageName:"image\($0)")}
    
    @State private var selectedStory: Story?
    @State private var isShowingFullscreenCover = false
    
    var body: some View {
    
        ScrollView(.horizontal,showsIndicators: false){
            HStack(spacing: 10){
                ForEach (stories) { story in
                    Image(story.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 70, height: 70)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color(red: 0.9, green: 0.624, blue: 0.456), lineWidth:3))
                        .shadow(radius: 3)
                    
                        .onTapGesture {
                            self.selectedStory = story
                            self.isShowingFullscreenCover = true
                        }
                }
            }
            .padding()
        }
        .fullScreenCover(item: $selectedStory){ currentStory in
            FullScreenStoryView(story: currentStory)
            
        }
    }
}


struct FullScreenStoryView : View{
    let story: Story
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack{
            Color(red: 245/255, green: 195/255, blue: 165/255)
                .edgesIgnoringSafeArea(.all)
            NavigationView{
                VStack{
                    Image(story.imageName)
                        .resizable()
                        .scaledToFit()
                        .edgesIgnoringSafeArea(.all)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .navigationBarItems(leading: Button(action: {dismiss()}, label: { Image(systemName: "xmark.circle.fill")
                }))
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
    
}

#Preview {
    StoryView()
}
