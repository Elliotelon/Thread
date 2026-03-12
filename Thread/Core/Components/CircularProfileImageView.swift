//
//  CircularProfileImageView.swift
//  Thread
//
//  Created by 김민규 on 3/12/26.
//

import SwiftUI

struct CircularProfileImageView: View {
    var body: some View {
        Image("person-1")
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
    }
}

#Preview {
    CircularProfileImageView()
}
