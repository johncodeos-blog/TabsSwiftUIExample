//
//  Demo2View.swift
//  TabsSwiftUIExample
//
//  Created by John Codeos on 11/7/20.
//

import SwiftUI

struct Demo2View: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.737254902, green: 0.1294117647, blue: 0.2941176471, alpha: 1))
            Text("Movies View")
                .foregroundColor(.white)
                .font(Font.system(size: 25, weight: .bold))
        }
    }
}

struct Demo2View_Previews: PreviewProvider {
    static var previews: some View {
        Demo2View()
    }
}
