//
//  ContentView.swift
//  Shared
//
//  Created by A337950 on 01/12/2021.
//

import SwiftUI

struct ContentView: View {
        
    @StateObject var connectivity = ConnectivityService(role: .slave)
    
    var body: some View {
        Text("Hello, world!")
            .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
