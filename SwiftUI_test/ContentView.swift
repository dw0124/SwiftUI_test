//
//  ContentView.swift
//  SwiftUI_test
//
//  Created by 김두원 on 2022/12/02.
//

import SwiftUI

struct ContentView: View {
    
    // @State 값의 변화를 감지 -> 뷰에 적용
    @State
    private var isActivated: Bool = false
    
    var body: some View {
        
        NavigationView {
            VStack {
                HStack{
                    
                    MyVstackView()
                    MyVstackView()
                    MyVstackView()
                }   // Hstack
                .padding(isActivated ? 50.0 : 10.0)
                .background(isActivated ? Color.yellow : Color.black)
                // 탭 제스쳐 추가
                .onTapGesture {
                    // 애니메이션과 함께
                    withAnimation {
                        // toggle() true 이면 false로  false이면 true
                        self.isActivated.toggle()
                    }
                    
                }
                // 네이게이션 버튼(링크)
                NavigationLink(destination: MyTextView() ){
                    Text("네비게이션")
                        .fontWeight(.heavy)
                        .font(.system(size: 40))
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(30)
                } .padding(.top, 50)
            }   // Vstack
            
            
            
        }   // NavigationView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
