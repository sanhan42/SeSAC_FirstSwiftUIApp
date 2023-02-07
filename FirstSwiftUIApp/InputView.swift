//
//  InputView.swift
//  FirstSwiftUIApp
//
//  Created by 한상민 on 2023/02/06.
//

import SwiftUI

struct UserTextView: View {
    @Binding var text: String
    
    var body: some View {
        Text(text)
    }
}

struct InputView: View {
    
    @State private var nickname = ""
    
    var body: some View {
        VStack {
            TextField("닉네임을 입력해주세요", text: $nickname)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            UserTextView(text: $nickname)
        }
    }
}

struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView()
    }
}
