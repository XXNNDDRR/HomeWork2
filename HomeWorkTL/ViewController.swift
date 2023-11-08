//
//  ViewController.swift
//  HomeWorkTL
//
//  Created by Alexander on 04.11.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var button: UIButton!
    
    private var views: [UIView] = []
    private var currentViewIndex = 0
    private var isFirstClick = true
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        views = [redView, yellowView, greenView]
        
        for view in views {
            view.alpha = 0.1
            view.layer.cornerRadius = 50
        }
        
        button.layer.cornerRadius = 20
        
        
        
    }
    
    @IBAction func clickTurnOn(_ sender: UIButton) {
        
        if isFirstClick {
            redView.alpha = 1.0
            isFirstClick = false
            button.setTitle("NEXT", for: .normal)
        } else {
            let previousView = views[currentViewIndex]
            previousView.alpha = 0.1
            
//            currentViewIndex += 1
//            
//            if currentViewIndex >= views.count {
//                currentViewIndex = 0
//            }
            
            currentViewIndex = (currentViewIndex + 1) % views.count
            let currentView = views[currentViewIndex]
            currentView.alpha = 1.0
        }
        
    }
    
}

