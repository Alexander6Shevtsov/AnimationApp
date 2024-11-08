//
//  ViewController.swift
//  AnimationApp
//
//  Created by Alexander Shevtsov on 02.11.2024.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var animationView: SpringView!
    @IBOutlet var animationLabel: SpringLabel! {
        didSet { // вызывается сразу после изменения обьекта
            animationLabel.text = animation.description
        }
    }
    
    // MARK: - Private properties
    private var animation = Animation.randomAnimation
    
    // MARK: - IB Actions
    @IBAction func animationButtonPressed(_ sender: UIButton) {
        animationLabel.animation = "zoomOut"
        animationLabel.x = 50
        animationLabel.animate()
        animationLabel.text = animation.description
        
        animationLabel.animateNext { [unowned self] in // обработка ссылки
            animationLabel.animation = "zoomIn"
            animationLabel.animate()
            
            animationView.animation = animation.name
            animationView.curve = animation.curve
            animationView.duration = animation.duration
            animationView.force = animation.force
            animationView.delay = animation.delay
            animationView.animate()
            
            animation = Animation.randomAnimation
            sender.setTitle("Run \(animation.name)", for: .normal)
        }
    }
}

