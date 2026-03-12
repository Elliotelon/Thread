//
//  ExploreView.swift
//  Thread
//
//  Created by 김민규 on 3/11/26.
//

import SwiftUI

struct ExploreView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(0...10, id: \.self){ user in
                        UserCell()
                        
                        Divider()
                    }
                    .padding(.horizontal)
    
                }
                .padding(.vertical, 4)
            }
            .navigationTitle("검색")
            .searchable(text: $searchText,
                        placement: .navigationBarDrawer(displayMode: .always),
                        prompt: "검색")
        }
    }
}

#Preview {
    ExploreView()
}
