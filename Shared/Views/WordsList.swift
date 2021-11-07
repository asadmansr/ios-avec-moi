//
//  WordsList.swift
//  AvecMoi
//
//  Created by Asad Mansoor on 2021-11-06.
//

import SwiftUI

struct WordsList: View {
    
    @State private var selectedWord: String?
    let words = DataRepository().getWords()
    
    var body: some View {
        List {
            ForEach(words, id: \.self) {word in
                NavigationLink(
                    destination: DetailView(title: word.title!, translation: word.translation!, image: word.image!),
                    tag: word.title!,
                    selection: $selectedWord
                ) {
                    WordRow(image: word.image!, title: word.title!, translation: word.translation!)
                }
                .tag(word.title)
            }
        }
        .navigationTitle("New Words")
        .frame(minWidth: 250)
    }
}

struct WordsList_Previews: PreviewProvider {
    static var previews: some View {
        WordsList()
    }
}
