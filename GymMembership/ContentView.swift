//
//  ContentView.swift
//  GymMembership
//
//  Created by Hoan Tran on 12/12/22.
//

import SwiftUI

struct Page: View {
    let title: String
    let image: String
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
                .ignoresSafeArea()
                .background(ignoresSafeAreaEdges: .all)
            VStack {
                Text(title)
                    .bold()
                    .foregroundColor(Color.gray)
                    .font(.title)
                Image(image)
                    .resizable()
                    .scaledToFit()
                Spacer()
            }
        }
    }
}

struct ContentView: View {
    var body: some View {
        TabView {
            Page(title: "Springfield", image: "springfield.y")
            Page(title: "Haverford", image: "haverford.y")
        }
        .tabViewStyle(.page)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
