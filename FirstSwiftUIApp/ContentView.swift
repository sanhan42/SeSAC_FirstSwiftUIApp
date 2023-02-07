//
//  ContentView.swift
//  FirstSwiftUIApp
//
//  Created by 한상민 on 2022/12/19.
//

import SwiftUI // iOS13+ (WWDC19에서 등장)
// iOS13, 14, 15, 16 -> 코드가 다 다름.
/*
 UIKit, WatchKit, AppKitk...
 */

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "star.fill")
                .imageScale(.large)
                .foregroundColor(Color.red)
            Text("안녕하세요")
            Text("안녕하세요")
            Text("안녕하세요")
        }
        .padding()
        .border(.red)
        .padding()
        .border(.green)
//        .frame(width: 400, height: 700, alignment: .center)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.gray)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
