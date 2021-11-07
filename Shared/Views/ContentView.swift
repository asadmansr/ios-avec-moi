//
//  ContentView.swift
//  Shared
//
//  Created by Asad Mansoor on 2021-11-06.
//

import SwiftUI
import CoreData

enum NavigationItem {
    case home
    case learn
    case practice
    case words
}

struct ContentView: View {
    
    var body: some View {
        AppViewer()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
