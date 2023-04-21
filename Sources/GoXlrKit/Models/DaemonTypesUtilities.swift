//
//  File.swift
//  
//
//  Created by Adélaïde Sky on 21/04/2023.
//

import Foundation

extension Array where Element: (Comparable & SignedNumeric) {

    func nearest(to value: Element) -> (offset: Int, element: Element)? {
        self.enumerated().min(by: {
            abs($0.element - value) < abs($1.element - value)
        })
    }
}

extension GateTimes {
    public var float: Float {
        let listimes = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150, 160, 170, 180, 190, 200, 250, 300, 350, 400, 450, 500, 550, 600, 650, 700, 750, 800, 850, 900, 950, 1000, 1100, 1200, 1300, 1400, 1500, 1600, 1700, 1800, 1900, 2000]
        return Float(listimes[self.rawValue])
    }
}

extension CompressorRatio {
    public var display: String {
        let listRatios = ["1:1", "1.1:1", "1.2:1", "1.4:1", "1.6:1", "1.8:1", "2:1", "2.5:1", "3.2:1", "4:1", "5.6:1", "8:1", "16:1", "32:1", "64:1"]
        return listRatios[self.rawValue]
    }
}
