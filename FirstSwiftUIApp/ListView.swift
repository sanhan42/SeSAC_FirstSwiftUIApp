//
//  ListView.swift
//  FirstSwiftUIApp
//
//  Created by 한상민 on 2022/12/19.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List {
            Text("1위")
            Text("2위")
            Text("3위")
                .font(.headline)
                .fontWeight(.light)
                .foregroundColor(Color.pink)
                .padding([.top, .leading, .bottom])
            Text("4위")
            Text("5위")
                .foregroundColor(.yellow)
                .background(.black)
                .font(.caption) // 그룹보다 개별 뷰 설정이 우선
            Text("6위")
            Text("7위")
            ForEach(0..<50) {
                Text("리스트셀\($0)")
            }
        }
        .listStyle(.plain)
        .font(.largeTitle)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
