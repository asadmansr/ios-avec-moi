//
//  LearnedWordsList.swift
//  AvecMoi
//
//  Created by Asad Mansoor on 2021-11-06.
//

import SwiftUI

struct LearnedWordsList: View {
    
    @State private var selectedWord: String?
    
    @FetchRequest(
            sortDescriptors: [NSSortDescriptor(keyPath: \Item.title, ascending: true)],
            animation: .default)
        private var items: FetchedResults<Item>
    
    var body: some View {
        List {
            ForEach(items, id: \.self) {word in
                NavigationLink(
                    destination: DetailView(title: word.title, translation: word.translation, image: word.image, saveWord: false),
                    tag: word.title ?? "",
                    selection: $selectedWord
                ) {
                    WordRow(image: word.image, title: word.title, translation: word.translation)
                }
                .tag(word.title)
            }
        }
        .navigationTitle("Learned Words")
        .frame(minWidth: 250)
        .onAppear {
            print(items)
        }
    }
}
