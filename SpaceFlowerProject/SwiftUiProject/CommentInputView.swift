//
//  CommentInputView.swift
//  SwiftUiProject
//
//  Created by titoi2 on 2019/10/20.
//  Copyright © 2019 titoi2. All rights reserved.
//

import SwiftUI

struct CommentInputView: View {
    var seedNo: Int
    @State private var message: String = ""
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                if seedNo == 1 {
                    Image("tane1")
                } else if seedNo == 2 {
                    Image("tane2")
                } else if seedNo == 3 {
                    Image("tane3")
                } else if seedNo == 4 {
                    Image("tane4")
                } else if seedNo == 5 {
                    Image("tane5")
                }
                Spacer()
                Text("あなたの思いを込めて下さい").font(.title)
                Spacer()
                NavigationLink(destination: MyView(seedNo: seedNo, message: message)) {
                    Text("宇宙へ").font(.largeTitle)
                }
                Spacer()
                Image("mic").resizable()
                    .scaledToFit().frame(width: 200, height: 200, alignment: .center)
                Spacer()
            }
        }
    }
}

struct CommentInputView_Previews: PreviewProvider {
    static var previews: some View {
        CommentInputView(seedNo: 0)
    }
}

