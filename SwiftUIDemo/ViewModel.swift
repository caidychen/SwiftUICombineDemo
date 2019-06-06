//
//  ViewModel.swift
//  SwiftUIDemo
//
//  Created by KD Chen on 6/6/19.
//  Copyright © 2019 Quest Payment Systems. All rights reserved.
//

import SwiftUI
import Combine

final class ViewModel: BindableObject {
    let didChange = PassthroughSubject<ViewModel, Never>()
    var developers: [Developer] = []{
        didSet{
            didChange.send(self)
        }
    }
    init() {
        fetch()
    }
    
    private func fetch() {
        Service.shared.fetch { developers in
            self.developers = developers
        }
    }
}
