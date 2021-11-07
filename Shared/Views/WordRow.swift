//
//  WordRow.swift
//  AvecMoi
//
//  Created by Asad Mansoor on 2021-11-06.
//

import SwiftUI

struct WordRow: View {
    
    var image: String?
    var title: String?
    var translation: String?
    
    var body: some View {
        VStack {
            Spacer().frame(height: 16)
            HStack {
                #if os(iOS)
                Image(systemName: image ?? "")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 36, height: 36)
                #endif
                #if os(macOS)
                Image(systemName: image ?? "")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 36, height: 36)
                #endif
                
                Spacer().frame(width: 16)
                
                VStack(alignment: .leading) {
                    Text(title ?? "")
                        .font(.title)
                        .bold()
                }
            }
            Spacer().frame(height: 16)
        }
    }
}
