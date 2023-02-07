//
//  Tamagochi.swift
//  FirstSwiftUIApp
//
//  Created by 한상민 on 2023/01/04.
//

import SwiftUI

/*
 1. 구조체 (ex. GrowButton 구조체)
    - 여러 화면에서 사용 가능
 2. 연산 프로퍼티 사용 (ex. Tamagochi 구조체 안의 characterName 프로퍼티)
    - 하나의 화면에서만 재사용할 수 있음.
    - 항상 body가 그려질 때 전부 다시 그리게 됨!
 */

struct GrowButton: View {
    var text: String
    var icon: Image
    var action: () -> Void
    
    var body: some View {
        Button (action: action) {
            icon
            Text(text)
        }
        .padding()
        .background(.black)
        .foregroundColor(.white)
        .cornerRadius(20)
    }
}

//struct ComputedProperty: View {
//    @State var apple = "사과"
//
//    var body: some View {
//        apple = "바나나" // 구조체 내부에서 프로퍼티 값 변경이 안됨.
//        Text(apple)
//    }
//}

struct ExampleText: View {
    var body: some View {
        Text("방실방실 다마고치 \(Int.random(in: 1...100))")
    }
}

// Opaque Type (역제네릭)
// some - 컴파일 시 실제 값으로 반환을 해줌
struct Tamagochi: View {
    @State private var riceCount: Int = 0
    @State private var waterCount: Int = 0
    @State private var showModal = false
    
    var characterName: some View { // 연산 프로퍼티
        Text("방실방실 다마고치 \(Int.random(in: 1...100))")
    }
    
    /*
      VStack, HStack, ZStack : 전체 데이터를 메모리에 담아두고 스크롤 할 때 보여줄 뿐
       LazyVStack, LazyHStack : 화면에 렌더링 될 때, 데이터를 메모리에 담고 그린다.
     */
    var body: some View {
        VStack(spacing: 10) {
            ZStack {
                characterName
                    .padding(100)
                    .background(.red)
                characterName
                    .padding(50)
                    .background(.yellow)
            }
            characterName // 뷰 렌더링 - 데이터가 달라질 때마다 뷰를 다시 그려줌. -> 가볍고 빠르게 처리되도록 애플이 만들어 둠. 개발자가 신경쓸 필요 X
            ExampleText() // 새롭게 그려지지 않음.
            Text("Lv 1. 밥알 \(riceCount)개 물방울 \(waterCount)개")
            GrowButton(text: "밥먹기", icon: Image(systemName: "pencil")) {
                riceCount += 1
            }
            
            GrowButton(text: "물먹기", icon: Image(systemName: "star")) {
                waterCount += 1
            }
            
            GrowButton(text: "통계보기", icon: Image(systemName: "star")) {
                showModal = true
            }
            .sheet(isPresented: $showModal) {
                ExampleView()
            }
        }
        .onAppear(perform: {
            print("viewDidAppear")
        })
        .onDisappear {
            print("viewDidDisappear")
        }
    }
}


struct Tamagochi_Previews: PreviewProvider {
    static var previews: some View {
        Tamagochi()
    }
}
