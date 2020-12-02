//
//  ContentView.swift
//  TabsSwiftUIExample
//
//  Created by John Codeos on 11/7/20.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab: Int = 0

    let tabs: [Tab] = [
        .init(icon: Image(systemName: "music.note"), title: "Music"),
        .init(icon: Image(systemName: "film.fill"), title: "Movies"),
        .init(icon: Image(systemName: "book.fill"), title: "Books")
    ]

    init() {
        UINavigationBar.appearance().barTintColor = UIColor(#colorLiteral(red: 0.737254902, green: 0.1294117647, blue: 0.2941176471, alpha: 1))
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().isTranslucent = false
    }

    var body: some View {
        NavigationView {
            GeometryReader { geo in
                VStack(spacing: 0) {
                    // Tabs
                    Tabs(tabs: tabs, geoWidth: geo.size.width, selectedTab: $selectedTab)

                    // Views
                    TabView(selection: $selectedTab,
                            content: {
                                Demo1View()
                                    .tag(0)
                                Demo2View()
                                    .tag(1)
                                Demo3View()
                                    .tag(2)
                            })
                        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                }
                .foregroundColor(Color(#colorLiteral(red: 0.737254902, green: 0.1294117647, blue: 0.2941176471, alpha: 1)))
                .navigationBarTitleDisplayMode(.inline)
                .navigationTitle("TabsSwiftUIExample")
                .ignoresSafeArea()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
