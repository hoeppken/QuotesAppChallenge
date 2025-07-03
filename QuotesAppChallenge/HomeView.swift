//
//  ContentView.swift
//  QuotesAppChallenge
//
//  Created by Rafael dos Santos Varela on 02.07.25.
//

import SwiftUI
import SwiftData

struct HomeView: View {
    @Query private var quote : [Quote]
    
    
    var body: some View {
        
        NavigationStack {
            
            VStack (alignment: .leading){
                
                Text("Quotes")
                    .font(.largeTitle).toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            //add quote
                        } label: {
                            Image(systemName: "plus")
                        }

                    }
                }
                
                ScrollView {
                    
                    VStack (alignment: .center){
                        
                        ForEach (quote) { q in
                            
                            CardView(quote: q)
                            
                        }
                        
                        
                    }
                    
                }
                
            }
        }
    }
}

#Preview {
    HomeView()
}
