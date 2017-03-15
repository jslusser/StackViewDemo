//
//  ViewController.swift
//  StackViewDemo
//
//  Created by James Slusser on 3/14/17.
//  Copyright © 2017 James Slusser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cupStackView: UIStackView!
    @IBAction func removeCup(_ sender: Any) {
        let lastAddedCup = self.cupStackView.arrangedSubviews.last
        
        if let cup = lastAddedCup
        {
            UIView.animate(withDuration: 0.25,
                           animations: {
                            
                            self.cupStackView.removeArrangedSubview(cup)
                            cup.removeFromSuperview()
                            self.cupStackView.layoutIfNeeded()
            })
        }
    }
    @IBAction func addCup(_ sender: AnyObject) {
        let cupImage = UIImageView(image: UIImage(named: "RedCoffeeCup"))
        cupImage.contentMode = .scaleAspectFit
        
        UIView.animate(withDuration: 0.75, animations: {
            self.cupStackView.addArrangedSubview(cupImage)
            self.cupStackView.layoutIfNeeded()
        })
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

