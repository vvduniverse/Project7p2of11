//
//  ContentView.swift
//  Project7p2of11
//
//  Created by Vahtee Boo on 04.01.2022.
//

import SwiftUI

struct SecondView: View {
    
    let name: String
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Text("Second View for you, \(name)!")
            Button("Dismiss") {
                dismiss()
            }
        }
    }
}

struct ContentView: View {
    
    @State private var showingSheet = false
    var body: some View {
        
        Button("Show Second Sheet") {
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            SecondView(name: "Vahtang")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
