//
//  MyView.swift
//  SwiftUiProject
//
//  Created by titoi2 on 2019/10/19.
//  Copyright © 2019 titoi2. All rights reserved.
//

import SwiftUI

struct MyView: View {
    var seedNo: Int
    var message: String = ""
    @State private var show_modal: Bool = false
    @State var mode: Bool = true
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack {
                if mode {
                    WebView(url: URL(string: "https://www.museums-info.net/naco/")!)
                } else {
                    WebView(url: URL(string:"https://www.museums-info.net/naco/index2.html")!)
                }
                HStack {
                    Spacer()
                    Button(action: {
                        self.show_modal = true
                    }) {
                        Text("花を表示").font(.title)
                    }.sheet(isPresented: self.$show_modal) {
                        FlowerView(seedNo: self.seedNo, message: self.message)
                    }
                    Spacer()
                    Button( mode  ? "天球モード" : "位置モード" ) {
                        // action
                        self.mode = !self.mode
                    }.font(.title)
                    Spacer()
                }
            }
        }
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView( seedNo: 0, message: "")
    }
}

