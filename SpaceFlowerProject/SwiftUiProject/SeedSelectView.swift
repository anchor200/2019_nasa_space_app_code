//
//  SeedSelectView.swift
//  SwiftUiProject
//
//  Created by titoi2 on 2019/10/20.
//  Copyright © 2019 titoi2. All rights reserved.
//

import SwiftUI

struct SeedSelectView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("タネを選んで下さい").frame(alignment: Alignment.center).font(.title)
                Spacer()
                HStack {
                    Spacer()
                    NavigationLink(destination: CommentInputView(seedNo: 1)) {
                        Image("tane1").renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                    }
                    Spacer()
                    NavigationLink(destination: CommentInputView(seedNo: 2)) {
                        Image("tane2").renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                    }
                    Spacer()
                    NavigationLink(destination: CommentInputView(seedNo: 3)) {
                        Image("tane3").renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                    }
                    Spacer()
                }
                Spacer()
                HStack {
                    Spacer()
                    NavigationLink(destination: CommentInputView(seedNo: 4)) {
                        Image("tane4")
                            .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                    }
                    Spacer()
                    NavigationLink(destination: CommentInputView(seedNo: 5)) {
                        Image("tane5")
                            .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct SeedSelectView_Previews: PreviewProvider {
    static var previews: some View {
        SeedSelectView()
    }
}

