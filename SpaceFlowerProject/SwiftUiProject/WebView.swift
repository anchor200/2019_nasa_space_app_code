//
//  WebView.swift
//  SwiftUiProject
//
//  Created by titoi2 on 2019/10/19.
//  Copyright © 2019 titoi2. All rights reserved.
//

import SwiftUI
import WebKit

struct WebView : UIViewRepresentable {
    var url: URL

    func makeUIView(context: Context) -> WKWebView  {
        return WKWebView(frame: .zero)
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let req = URLRequest(url: url)
        uiView.load(req)
    }
}

#if DEBUG
struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(url: URL(string: "https://www.museums-info.net/naco/")!)
    }
}
#endif

