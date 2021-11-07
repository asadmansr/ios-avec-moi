//
//  DetailView.swift
//  AvecMoi
//
//  Created by Asad Mansoor on 2021-11-06.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.managedObjectContext) private var viewContext

    var title: String?
    var translation: String?
    var image: String?
    var saveWord: Bool = true
    
    var body: some View {
        VStack(alignment: .leading) {
            #if os(iOS)
            LottieView(name: "owl")
                .frame(width: 300, height: 300)
            #endif
            Text(title ?? "")
                .font(.largeTitle)
                .bold()
            HStack {
                #if os(iOS)
                Text("Translation:")
                    .font(.title2)
                    .foregroundColor(.gray)
                #endif
                #if os(macOS)
                Text("Translation:")
                    .font(.title2)
                    .foregroundColor(.gray)
                #endif
                Text(translation ?? "")
                    .font(.title2)
            }
            Spacer()
        }.onAppear {
            if (title != nil && translation != nil && image != nil) {
                if (saveWord) {
                    // addItem(title: title!, translation: translation!, image: image!)
                }
            }
        }
    }
    
    private func addItem(title: String, translation: String, image: String) {
        withAnimation {
            let newItem = Item(context: viewContext)
            newItem.title = title
            newItem.translation = translation
            newItem.image = image
            
            do {
                try viewContext.save()
            } catch {
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }
}
