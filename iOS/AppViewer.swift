//
//  AppViewer.swift
//  AvecMoi (iOS)
//
//  Created by Asad Mansoor on 2021-11-06.
//

import SwiftUI

struct AppViewer: View {
    var body: some View {
        TabView {
            NavigationView {
                HomeView()
            }
            .tabItem { Label("Home", systemImage: "house") }
            .tag(NavigationItem.home)
            
            NavigationView {
                WordsList()
            }
            .tabItem { Label("Learn", systemImage: "graduationcap.fill") }
            .tag(NavigationItem.learn)
            
            NavigationView {
                PracticeView()
            }
            .tabItem { Label("Practice", systemImage: "brain.head.profile") }
            .tag(NavigationItem.practice)
            
            NavigationView {
                LearnedWordsList()
            }
            .tabItem { Label("Words", systemImage: "character.book.closed.fill") }
            .tag(NavigationItem.words)
        }
    }
}

struct AppViewer_Previews: PreviewProvider {
    static var previews: some View {
        AppViewer()
    }
}
