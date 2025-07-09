//
//  CardView.swift
//  QuotesAppChallenge
//
//  Created by Rafael dos Santos Varela on 02.07.25.
//

import SwiftUI

struct CardView: View {
    
    var quote: Quote
    
    var body: some View {
        
        HStack {
            ZStack (){

                RoundedRectangle (cornerRadius: 15)
                    .shadow(radius: 10, x:0, y:4)
                VStack {
                    Text("\"Quote text hier in a way it can be readed easily.\" ").foregroundStyle(.white)
                    Spacer()
                    HStack {
                        Spacer()
                        Text("- Authors name here")
                            .foregroundStyle(.gray)
                            .multilineTextAlignment(.trailing)
                    }.padding(.horizontal)
                }
                .padding(.top, 50)
                .padding(.bottom, 20)
                
                    
            }
            
            Image(systemName: "chevron.forward")
                .foregroundStyle(Color.gray)
        }.padding(.vertical, 10)
        
    }
}

#Preview {
    CardView(quote: Quote())
}
