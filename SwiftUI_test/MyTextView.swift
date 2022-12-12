//
//  MyTextView.swift
//  SwiftUI_test
//
//  Created by 김두원 on 2022/12/12.
//

import Foundation
import SwiftUI

struct MyTextView: View {
    
    // @State 값의 변화를 감지 -> 뷰에 적용
    @State
    private var index: Int = 0
    
    // 배경색 배열 준비
    private let backgroundColors = [
        Color.red,
        Color.yellow,
        Color.blue,
        Color.orange,
        Color.green
    ]
    
    var body: some View {
        VStack{
            
            Spacer()
            
            Text("배경 아이템 인덱스 \(self.index)")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                
            Spacer()
            
        }   // Vstack
        .background(backgroundColors[index])
        .edgesIgnoringSafeArea(.all)
        .onTapGesture {
            print("배경아이템 클릭")
            
            if(self.index == self.backgroundColors.count - 1){
                self.index = 0
            }else {
                self.index += 1
            }
        }
    }
    
}

struct MyTextView_Previews: PreviewProvider{
    static var previews: some View {
        MyTextView()
    }
}
