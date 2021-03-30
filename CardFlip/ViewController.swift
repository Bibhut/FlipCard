//
//  ViewController.swift
//  CardFlip
//
//  Created by Bibhut Bikram Thakuri on 30/3/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgCard: UIImageView!
    @IBOutlet weak var btnCard: UIButton!
    
    var isBackView = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func flipCard(_ sender: Any) {
        isBackView = !isBackView
        imgCard.image = UIImage(named: isBackView ? "card-back": "card-front")
        UIView.transition(with: imgCard, duration: 0.5, options: isBackView ? .transitionFlipFromRight : .transitionFlipFromLeft, animations: nil, completion: nil)
        btnCard.setImage(UIImage(named: isBackView ? "go-front": "go-back"), for: .normal)
    }
    
}

