//
//  RegistrationView.swift
//  Thread
//
//  Created by 김민규 on 3/10/26.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    @State private var username = ""
    
    var body: some View {
        VStack {
            Spacer()
            //                Image("thread-app-icon")
            //                    .resizable()
            //                    .scaledToFit()
            //                    .frame(width: 120, height: 120)
            //                    .padding()
            
            VStack {
                TextField("이메일을 입력하세요.", text: $email)
                    .modifier(ThreadsTextFieldModifier())
                
                SecureField("비밀번호를 입력하세요", text: $password)
                    .modifier(ThreadsTextFieldModifier())
                
                TextField("이름을 입력하세요.", text: $fullname)
                    .modifier(ThreadsTextFieldModifier())
                
                TextField("닉네임을 입력하세요.", text: $username)
                    .modifier(ThreadsTextFieldModifier())
            }
            
            Button {
                
            } label: {
                Text("회원 가입")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color(.white))
                    .frame(width: 352, height: 44)
                    .background(.black)
                    .cornerRadius(8)
            }.padding(.vertical)
            
            Spacer()
            
            Divider()
            
            Button {
                
            } label: {
                HStack(spacing: 3) {
                    Text("계정이 이미 있으신가요?")
                    
                    Text("로그인")
                        .fontWeight(.semibold)
                }
                .foregroundStyle(Color(.black))
                .font(.footnote)
            }.padding(16)
            
            
        }
    }
}

#Preview {
    RegistrationView()
}
