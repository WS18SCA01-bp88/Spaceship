//
//  ViewController.swift
//  Spaceship
//
//  Created by Balmes Pavlov on 12/11/18.
//  Copyright © 2018 Balmes Pavlov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    var falconView: UIView = UIView()
    
    @IBOutlet weak var falconView: UIView!
    
    @IBOutlet var rightSwipeGesture: UISwipeGestureRecognizer!
    
    @IBOutlet var leftSwipeGesture: UISwipeGestureRecognizer!
    
    let falconViewWidth: CGFloat = CGFloat(10)
    
    
    var falcon: Spaceship = Spaceship(name: "Falcon", health: 100, position: 0)
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        falconView.frame.size.width = falconViewWidth
//        self.view.frame.width / 2
        
        
//        falconView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
//        falconView.backgroundColor = UIColor.red
//        self.view.addSubview(falconView)
    }

    @IBAction func moveSpaceship(_ sender: UISwipeGestureRecognizer) {
        //Print respective minX, maxX values for View for debugging
        print("""
            self.view.frame.minX: \(self.view.frame.minX)
            falconView.frame.minX: \(falconView.frame.minX)
            self.view.frame.maxX: \(self.view.frame.maxX)
            falconView.frame.maxX: \(falconView.frame.maxX)
            ======
            """)
        
        switch sender.direction {
        case .right:
            if (self.view.frame.maxX > falconView.frame.maxX + falconViewWidth) {
                falconView.frame.origin.x += falconViewWidth
            }
        case .left:
            if (self.view.frame.minX < falconView.frame.minX - falconViewWidth) {
                falconView.frame.origin.x -= falconViewWidth
            }
        default:
            break
        }
    }
}

