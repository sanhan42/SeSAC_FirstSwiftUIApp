//
//  ExampleView.swift
//  FirstSwiftUIApp
//
//  Created by 한상민 on 2022/12/19.
//

import SwiftUI

struct ExampleView: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.title)
                .foregroundColor(.yellow)
                .fontWeight(.ultraLight)
            Spacer()
            Circle()
                .fill(.yellow)
                .padding(10)
            Ellipse()
                .fill(.green)
            Image(systemName: "star.fill")
                .imageScale(.large)
                .foregroundColor(.primary)
            Rectangle()
                .fill(.blue)
            Spacer()
            Text("안녕하세요 Apple")
                .font(.subheadline)
                .italic()
            Text("이게 가능!!\n줄바꿈\n세번째줄")
                .underline()
                .strikethrough()
                .lineLimit(2)
                .kerning(10)
        }
    }
}

struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView()
            .previewDevice("iPhone 11")
    }
}
