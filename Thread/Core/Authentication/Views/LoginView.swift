//
//  LoginView.swift
//  Thread
//
//  Created by 김민규 on 3/10/26.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                //                Image("thread-app-icon")
                //                    .resizable()
                //                    .scaledToFit()
                //                    .frame(width: 120, height: 120)
                //                    .padding()
                
                VStack {
                    TextField("이메일을 입력하세요.", text: $email)
                        .autocapitalization(.none)
                        .modifier(ThreadsTextFieldModifier())
                    
                    SecureField("비밀번호를 입력하세요", text: $password)
                        .modifier(ThreadsTextFieldModifier())
                }
                
                NavigationLink {
                    Text("비밀번호 잊어버림")
                } label: {
                    Text("비밀번호를 잊어버렸나요?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.vertical)
                        .padding(.trailing, 28)
                        .foregroundStyle(Color(.black))
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                
                Button {
                    
                } label: {
                    Text("로그인")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color(.white))
                        .frame(width: 352, height: 44)
                        .background(.black)
                        .cornerRadius(8)
                }
                
                Spacer()
                
                Divider()
                
                NavigationLink {
                    Text("회원가입")
                } label: {
                    HStack(spacing: 3) {
                        Text("계정이 없으신가요?")
                        
                        Text("회원 가입")
                            .fontWeight(.semibold)
                    }
                    .foregroundStyle(Color(.black))
                    .font(.footnote)
                    
                }
                .padding(.vertical, 16)
                
                
                
            }
        }
    }
}

#Preview {
    LoginView()
}
