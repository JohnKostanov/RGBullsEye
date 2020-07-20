//
//  TimeCounter.swift
//  RGBullsEye
//
//  Created by  Джон Костанов on 20/07/2020.
//  Copyright © 2020 John Kostanov. All rights reserved.
//

import Foundation
import Combine

class TimeCounter: ObservableObject {
    var timer: Timer?
    @Published var counter = 0
    
    @objc func updateCounter() {
        counter += 1
    }
    
    func killTimer() {
        timer?.invalidate()
        timer = nil
    }
    
    init() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
}
