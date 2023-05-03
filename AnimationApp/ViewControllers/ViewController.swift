//
//  ViewController.swift
//  AnimationApp
//
//  Created by Pavel Karunnyj on 03.05.2023.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    @IBOutlet var animationView: SpringView!
    @IBOutlet var infoAnimationLabel: UILabel!
    
    private var animation = Animation.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationView.layer.cornerRadius = 15
        infoAnimationLabel.text = animation.animationDescription
    }
    
    @IBAction func runSpringAnimation(_ sender: UIButton) {
        
        infoAnimationLabel.text = animation.animationDescription
        
        animationView.animation = animation.preset
        animationView.curve = animation.curve
        animationView.force = animation.force
        animationView.duration = animation.duration
        animationView.delay = animation.delay
        animationView.animate()
        
        animation = Animation.getRandomAnimation()
        
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }
}

