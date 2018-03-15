//
//  ViewController.swift
//  Tree
//
//  Created by Daniil Poplavski on 15.03.2018.
//  Copyright © 2018 Daniil Poplavski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!

    @IBOutlet weak var size: UILabel!
    
    @IBAction func offset(_ sender: UISlider) {
        UIView.animate(withDuration: 3){
            let offset = Double(sender.value)
            self.image.frame.origin.x = CGFloat(offset*200)
            self.image.frame.origin.y = CGFloat(offset*200)
        }
    }
    @IBAction func size(_ sender: UIStepper) {
       // UILabel.
    }
    @IBAction func angel(_ sender: UISegmentedControl) {
        UIView.animate(withDuration: 0.5) {
            let angel = Double(sender.titleForSegment(at: sender.selectedSegmentIndex)!)!
            self.image.transform = CGAffineTransform(rotationAngle: CGFloat(angel/180 * .pi))
        }

    }
    @IBAction func HidenSwitch(_ sender: Any) {
    }
    @IBAction func HiddenStepper(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

