//
//  CalucalteViewModel.swift
//  Bitrise CI test
//
//  Created by Mohsen on 9/14/22.
//

import SwiftUI

@MainActor class CombinationViewModel: ObservableObject {
    @Published var result: String = ""
    @Published var firstString: String = ""
    {
        didSet {
            sum(firstString: firstString, secondString: secondString)
        }
    }
    @Published var secondString: String = "" {
        didSet {
            sum(firstString: firstString, secondString: secondString)
        }
    }
    
    
    func sum(firstString: String, secondString: String) {
        result = "\(firstString) \(secondString)"
    }
}
