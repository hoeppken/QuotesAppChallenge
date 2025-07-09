//
//  ContentView.swift
//  QuotesAppChallenge
//
//  Created by Rafael dos Santos Varela on 02.07.25.
//

import SwiftUI
import SwiftData

struct HomeView: View {
    
    @Query private var quotes : [Quote]
    @State private var selectedQuote : Quote?
    
    
    var body: some View {
        
        NavigationStack {
            
            VStack (alignment: .leading){
                
                Text("Quotes")
                    .font(Font.largeTitle)
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing) {
                            Button {
                                //add quote
                                NavigationLink("", destination: AddEditView(quote: Quote()))
                            } label: {
                                Image(systemName: "plus")
                            }
                            
                        }
                    }
                    .bold()
                    
                
                ScrollView {
                    
                    ForEach(quotes) { q in
                    
                        CardView(quote: q).onTapGesture {
                            selectedQuote = q
                        }
                 
                    
                     }
                    
                    
                    
                }
                
            }.padding().navigationDestination(item: $selectedQuote) { quote in
                    AddEditView(quote: quote)
            }
        }
    }
}

#Preview {
    HomeView()
}
