//
//  ViewController.swift
//  Tinder
//
//  Created by Kazutomo Kita on 2020/02/24.
//  Copyright © 2020 Kazutomo Kita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var basicCard: UIView!
    
    var centerOfCard: CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        centerOfCard = basicCard.center
    }


    @IBAction func swipeCard(_ sender: UIPanGestureRecognizer) {
        let card = sender.view!
        let point = sender.translation(in: view)
        
        card.center = CGPoint(x: card.center.x + point.x, y: card.center.y + point.y)
    }
    
}

