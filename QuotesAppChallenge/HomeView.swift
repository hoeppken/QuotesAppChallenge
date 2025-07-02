//
//  ContentView.swift
//  QuotesAppChallenge
//
//  Created by Rafael dos Santos Varela on 02.07.25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Text ("Quotes").font(.largeTitle).fontWeight(.bold).multilineTextAlignment(.leading).padding(20.0).font(.system(size: 30, weight: .bold, design: .default))
            
            //add cardview hier
        }
        .padding()
    }
}

#Preview {
    HomeView()
}
