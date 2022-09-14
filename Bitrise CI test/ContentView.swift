//
//  ContentView.swift
//  Bitrise CI test
//
//  Created by Mohsen on 9/14/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel: CombinationViewModel = CombinationViewModel()
    
    var body: some View {

        VStack(alignment: .center, spacing: 5) {
            TextField("First String", text: $viewModel.firstString)
            TextField("Second String", text: $viewModel.secondString)
            
            Text(viewModel.result)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
