//
//  ProfileView.swift
//  Thread
//
//  Created by 김민규 on 3/11/26.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedFilter: ProfileThreadFilter = .threads
    @Namespace var animation
    
    private var filterBarWidth: CGFloat {
        let count = CGFloat(ProfileThreadFilter.allCases.count)
        return UIScreen.main.bounds.width / count - 20
    }
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 20){
                HStack(alignment:.top) {
                    VStack(alignment: .leading, spacing: 12) {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("사용자-1")
                                .font(.title2)
                                .fontWeight(.semibold)
                            
                            Text("사용자_1")
                                .font(.subheadline)
                            
                        }
                        
                        Text("A기업 ios개발자")
                            .font(.footnote)
                        
                        Text("2 followers")
                            .font(.caption)
                            .foregroundStyle(Color(.gray))
                    }
                    
                    Spacer()
                    
                    CircularProfileImageView()
                    
                }
                
                Button {
                    
                } label: {
                    Text("팔로우")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color(.white))
                        .frame(width: 352, height: 32)
                        .background(.black)
                        .cornerRadius(8)
                }
                
                VStack {
                    HStack {
                        ForEach(ProfileThreadFilter.allCases) {filter in
                            VStack {
                                Text(filter.title)
                                    .font(.subheadline)
                                    .fontWeight(selectedFilter == filter ? .semibold : .regular)
                                
                                
                                if selectedFilter == filter {
                                    Rectangle()
                                        .foregroundStyle(.black)
                                        .frame(width: filterBarWidth, height: 1)
                                        .matchedGeometryEffect(id: "item", in: animation)
                                } else {
                                    Rectangle()
                                        .foregroundStyle(.clear)
                                        .frame(width: filterBarWidth, height: 1)
                                }
                            }
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    selectedFilter = filter
                                }
                            }
                        }
                    }
                    
                    LazyVStack {
                        ForEach(0 ... 10, id: \.self) {
                            thread in ThreadCell()
                        }
                    }
                }
                .padding(.vertical, 8)
            }
            
            
        }
        .padding(.horizontal)
    }
}

#Preview {
    ProfileView()
}
