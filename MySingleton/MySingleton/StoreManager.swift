//
//  StoreManager.swift
//  MySingleton
//
//  Created by EI-LAP-8466 on 19/03/24.
//

import Foundation

import UIKit

// Singleton Class
class StoreManager {
    static let shared = StoreManager() // Singleton instance
    
    var data: [String] = []
    
    private init() {
        // Private initializer to prevent multiple instances
    }
    
    func fetchData(completion: @escaping () -> Void) {
           // Simulate fetching data from a remote server
           DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
               self.data = ["Apple 1", "Android 2", "IOS 3", "Google 4"]
               completion()
           }
       }
}


