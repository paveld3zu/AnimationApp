//
//  Model.swift
//  AnimationApp
//
//  Created by Pavel Karunnyj on 03.05.2023.
//

import Foundation
import SpringAnimation

struct Animation {
    
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var animationDescription: String {
        """
        preset: \(preset)
        curve: \(curve)
        force: \(String(format: "%.2f", force))
        duration: \(String(format: "%.2f", duration))
        delay: \(String(format: "%.2f", delay))
        """
    }
    
    static func getRandomAnimation() -> Animation {
        Animation(
            preset: DataStore.shared.presets.randomElement() ?? "",
            curve: DataStore.shared.curves.randomElement() ?? "",
            force: Double.random(in: 1...1.5),
            duration: Double.random(in: 1...1.5),
            delay: 0.2
        )
    }
}

