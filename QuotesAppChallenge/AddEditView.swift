//
//  AddEditView.swift
//  QuotesAppChallenge
//
//  Created by Rafael dos Santos Varela on 08.07.25.
//

import SwiftUI

struct AddEditView: View {
    
    @Environment(\.dismiss) private var dismiss
    @Environment(\.modelContext) private var context
    @State var quote : String = ""
    
    var body: some View {
        
        VStack (alignment : .leading, spacing : 20){
            
            Text ("Add/Edit Quote").font(.largeTitle).bold().padding(.bottom, 50)

            
            VStack (alignment : .leading, spacing : 10){
                
                Text("Quote").font(.callout)
                
                TextField(LocalizedStringKey("Type Quote Text"), text: $quote)
                    .textFieldStyle(.roundedBorder)
            }
            VStack (alignment : .leading, spacing : 10){
                
                Text("Author").font(.callout)
                
                TextField(LocalizedStringKey("Type Quote Author"), text: $quote)
                    .textFieldStyle(.roundedBorder)
            }
            HStack{
                
                Button {
                    //add the focus to the project
                    //Quotes.quote = quote
                    
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
    AddEditView()
}
