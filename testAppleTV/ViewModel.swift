//
//  ViewModel.swift
//  testAppleTV
//
//  Created by Jimmy Ko on 2019-08-06.
//  Copyright © 2019 Jimmy Ko. All rights reserved.
//

import Foundation

class ViewModel {
    var ipAddress: String?
    var port: String?
    var userName: String?
    
    init() { }
    
    func updateValues(_ data: Data) {
        self.port = data.port

        let parsed = parseIPAndPort(data.ipAddress)
        
        print("PARSED \(parsed)")
        if parsed.count > 1 {
            self.ipAddress = parsed[0]
            self.port = parsed[1]
        } else {
            self.ipAddress = parsed[0]
        }
        
        self.userName = data.userName
        
        print("updated: \(self.ipAddress) \(self.port) \(self.userName)")
    }
    
    func parseIPAndPort(_ input: String) -> [String] {
        var result: [String] = []
        let split: [Substring] = input.split(separator: ":")
        
        split.forEach {  result.append(String($0)) }
        
        return result
    }
}
