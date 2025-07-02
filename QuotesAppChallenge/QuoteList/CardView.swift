//
//  CardView.swift
//  QuotesAppChallenge
//
//  Created by Rafael dos Santos Varela on 02.07.25.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        
        HStack {
            ZStack (alignment: .trailing){

                RoundedRectangle (cornerRadius: 15)
                    .shadow(radius: 10, x:0, y:4)
                VStack {
                    Text("\"Quote text hier in a way it can be readed easily.\" ").foregroundStyle(.white)
                    Text("- Authors name here")
                        .foregroundStyle(.white)
                        .multilineTextAlignment(.trailing)
                }
                    
            }
            Image(systemName: "chevron.forward")
                .padding(5)
                .foregroundStyle(Color.gray)
        }
        
    }
}

#Preview {
    CardView()
}
