//
//  UserCell.swift
//  Thread
//
//  Created by 김민규 on 3/12/26.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            CircularProfileImageView()
            
            VStack(alignment: .leading) {
                Text("person-1")
                    .fontWeight(.semibold)
                
                Text("person1")
            }
            .font(.footnote)
            
            Spacer()
            
            Text("팔로우")
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 100, height: 32)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray4), lineWidth: 1)
                }
        }
    }
}

#Preview {
    UserCell()
}
