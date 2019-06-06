//
//  Service.swift
//  SwiftUIDemo
//
//  Created by KD Chen on 6/6/19.
//  Copyright © 2019 Quest Payment Systems. All rights reserved.
//

import SwiftUI
import Combine

final class Service {
    
    static let shared = Service()
    
    func fetch(completion: (([Developer]) -> Void)?) {
        DispatchQueue.global().async {
            sleep(1)
            let developers = [
                Developer(id: 0, name: "Kai"),
                Developer(id: 1, name: "Daniel"),
                Developer(id: 2, name: "Tom")
            ]
            DispatchQueue.main.async {
                completion?(developers)
            }
        }
     
    }
}
