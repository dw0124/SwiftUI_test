//
//  ContentView.swift
//  SwiftUI_test
//
//  Created by 김두원 on 2022/12/02.
//

import SwiftUI

struct MyVstackView: View {
    var body: some View {
        VStack {
            Text("1!")
                .font(.system(size: 60,weight: .bold))
            Text("2!")
                .font(.system(size: 60,weight: .bold))
            Text("3!")
                .font(.system(size: 60,weight: .bold))
        }   // VStack
        .background(Color.red)
                
    }
}

struct MyVstackView_Previews: PreviewProvider {
    static var previews: some View {
        MyVstackView()
    }
}
