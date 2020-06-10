//
//  ViewController.swift
//  BlurView
//
//  Created by Senthil Kumar2 on 08/06/20.
//  Copyright © 2020 Senthil Kumar2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var backView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Title
        self.title = "Blur View"
        
        // Call Blur View
        createBlurView()

    }
    
    func createBlurView() {
        
        // Step 1:
               // Create Image View
               let backgroundImageView = UIImageView(frame: backView.bounds)
               // Add subview to back view
               backView.addSubview(backgroundImageView)
               // Set Image to Image View
               backgroundImageView.image = UIImage(named: "original.jpg")
               
               // Back to view to Image View
               backView.sendSubviewToBack(backgroundImageView)
               
        // Step 2:
               // Add blur
               let blur = UIBlurEffect(style: .light)
               // Add blur effect view to blur
               let blurView = UIVisualEffectView(effect: blur)
               // Set frame
               blurView.frame = backView.bounds
               // Blur to add subview in backview
               backView.addSubview(blurView)
               
               
        // Step 3:
               // view to send back in Blurview
               backView.sendSubviewToBack(blurView)
               // view to send back in imageview
               backView.sendSubviewToBack(backgroundImageView)
        
        
    }


}

