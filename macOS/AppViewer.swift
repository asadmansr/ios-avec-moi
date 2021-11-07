//
//  AppViewer.swift
//  AvecMoi (macOS)
//
//  Created by Asad Mansoor on 2021-11-06.
//

import SwiftUI

struct AppViewer: View {
    
    @State var selection: NavigationItem? = .home
    
    var body: some View {
        NavigationView {
            sideBar
            Text("Select a category")
                .foregroundColor(.secondary)
            Text("Select a word")
                .foregroundColor(.secondary)
        }
    }
    
    var sideBar: some View {
        List(selection: $selection) {
            NavigationLink(
                destination: HomeView(),
                tag: NavigationItem.home,
                selection: $selection
            ) {
                Label("Home", systemImage: "house")
            }
            .tag(NavigationItem.home)
            
            NavigationLink(
                destination: WordsList(),
                tag: NavigationItem.learn,
                selection: $selection
            ) {
                Label("Learn", systemImage: "graduationcap.fill")
            }
            .tag(NavigationItem.learn)
            
            NavigationLink(
                destination: PracticeView(),
                tag: NavigationItem.practice,
                selection: $selection
            ) {
                Label("Practice", systemImage: "text.badge.checkmark")
            }
            .tag(NavigationItem.practice)
            
            NavigationLink(
                destination: LearnedWordsList(),
                tag: NavigationItem.words,
                selection: $selection
            ) {
                Label("Words", systemImage: "character.book.closed.fill")
            }
            .tag(NavigationItem.words)
            
        }
        .frame(minWidth: 200)
        .listStyle(SidebarListStyle())
        .toolbar {
            ToolbarItem {
                Button(action: toggleSideBar) {
                    Label("Toggle Sidebar", systemImage: "sidebar.left")
                }
            }
        }
    }
    
    func toggleSideBar() {
        NSApp.keyWindow?.firstResponder?.tryToPerform(
            #selector(NSSplitViewController.toggleSidebar),
            with: nil
        )
    }
}

struct AppViewer_Previews: PreviewProvider {
    static var previews: some View {
        AppViewer()
    }
}
