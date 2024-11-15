//
//  PostResponse.swift
//  NUUP_Challenge
//
//  Created by Damaris Cortés on 04/11/24.
//

import Foundation

struct PostResponse: Identifiable, Hashable {
    var id: UUID
    
    var user: UserLinkedInResponse
    var userLikesThisPost: UserLinkedInResponse
    var caption: String
    var type: Int // assuming 1, 2 link
    var imageUrl: String
    var title: String?
    var readTimeAgo: String // for eg 4 min read

}
