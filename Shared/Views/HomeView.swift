//
//  HomeView.swift
//  AvecMoi
//
//  Created by Asad Mansoor on 2021-11-06.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            VStack {
                #if os(iOS)
                LottieView(name: "home_animation")
                    .frame(width: 300, height: 300)
                #endif
                #if os(macOS)
                Image("Image")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 440, height: 440)
                #endif
                
                Text("Avec Moi.")
                    .foregroundColor(.white)
                    .font(.custom("Itim-Regular", size: 34))
                    .bold()
                    .frame(alignment: .leading)
                    
                Text("Your personal French buddy that will help you learn new words daily.")
                    .foregroundColor(.white)
                    .font(.custom("Itim-Regular", size: 22))
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 36)
                    .padding(.top, 4)
                
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .background(Color(red: 16 / 255, green: 26 / 255, blue: 39 / 255))
            
            Spacer()
        }.frame(maxWidth: .infinity)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
