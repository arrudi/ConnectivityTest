//
//  ContentView.swift
//  Shared
//
//  Created by A337950 on 01/12/2021.
//

import SwiftUI

struct ContentView: View {
        
    @StateObject var connectivity = ConnectivityService(role: .master)
    
    var iter = Int(0)
    
    
    var body: some View {
        VStack {
            ForEach (connectivity.messages, id: \.self) { text in
                    Text(text)
                }
                .padding()
            Button("Send", action: {
                connectivity.send(message: "Mierda \(iter)")
            })
        }
                
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
