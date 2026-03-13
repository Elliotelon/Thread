//
//  ProfileThreadFilter.swift
//  Thread
//
//  Created by 김민규 on 3/13/26.
//

import Foundation

enum ProfileThreadFilter: Int, CaseIterable, Identifiable {
    case threads
    case replies
//    case likes
    
    var title: String {
        switch self {
        case .threads: return "게시글"
        case .replies: return "댓글"
//        case . likes: return "좋아요"
        }
    }
    
    var id: Int { return self.rawValue}
}
