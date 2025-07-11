//
//  AddEditView.swift
//  QuotesAppChallenge
//
//  Created by Rafael dos Santos Varela on 08.07.25.
//

import SwiftUI
import SwiftData

struct AddEditView: View {
    
    @Environment(\.dismiss) private var dismiss
    @Environment(\.modelContext) private var context
    var quote : Quote
    var isEditMode: Bool
    @State private var quoteText : String = ""
    @State private var quoteAuthor : String = ""
    
    var body: some View {
        
        VStack (alignment : .leading, spacing : 20){
            
            Text ("Add/Edit Quote").font(.largeTitle).bold().padding(.bottom, 50)

            
            VStack (alignment : .leading, spacing : 10){
                
                Text("Quote").font(.callout)
                
                TextField("Type Quote Text", text: $quoteText)
                    .textFieldStyle(.roundedBorder)
            }
            VStack (alignment : .leading, spacing : 10){
                
                Text("Author").font(.callout)
                
                TextField("Type Quote Author", text: $quoteAuthor)
                    .textFieldStyle(.roundedBorder)
            }
            HStack{
                
                Button {
                    //add the focus to the project
                    //Quotes.quote = quote
                    if isEditMode {
                        quote.text = quoteText
                    }else {
                        quote.text = quoteText
                        context.insert(quote)
                    }
                    
                    dismiss()
                    
                } label: {
                    Text ("Save")
                }.buttonStyle(.borderedProminent)
                
                Spacer()
                
                Button {
                    //add the focus to the project
                    //Quotes.quote = quote
                    
                    dismiss()
                    
                } label: {
                    Text ("Delete")
                }.buttonStyle(.plain).foregroundStyle(.red)
            }
              
                
            
            
        }.padding()
        Spacer()
    }
}

#Preview {
    AddEditView(quote: Quote(), isEditMode: true)
}
