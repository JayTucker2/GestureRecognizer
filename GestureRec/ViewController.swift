//
//  ViewController.swift
//  GestureRec
//
//  Created by Jaylan Tucker on 10/12/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ramen: UIImageView!
    @IBOutlet weak var rice: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.cyan
    }

    @IBAction func tapScreenAction(_ sender: UITapGestureRecognizer) {
        var tapLoc = sender.location(in: view)
        ramen.center = tapLoc
    }
    @IBAction func panAction(_ sender: UIPanGestureRecognizer) {
       var panLoc =  sender.location(in: view)
        rice.center = panLoc
    }
    
}

