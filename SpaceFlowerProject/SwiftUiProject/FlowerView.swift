//
//  FlowerView.swift
//  SwiftUiProject
//
//  Created by titoi2 on 2019/10/19.
//  Copyright © 2019 titoi2. All rights reserved.
//

import SwiftUI

struct FlowerView: View {
    var seedNo: Int = 0
    var message: String = ""
    var body: some View {
        VStack {
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
            Image("yuri")
        }
    }
}

struct FlowerView_Previews: PreviewProvider {
    static var previews: some View {
        FlowerView()
    }
}

