//
//  EndVC.swift
//  WarApp
//
//  Created by megat on 21/03/2019.
//  Copyright © 2019 Megat Syafiq. All rights reserved.
//

import UIKit
import Lottie

class EndVC: UIViewController {

//    @IBOutlet weak var test: LOTAnimatedControl!
    var playername = ""
    @IBOutlet weak var winnerLabel: UILabel!
    
    @IBOutlet weak var buttonEnd: UIButton!
    @IBOutlet weak var frameWinner: UIView!
    override func viewDidLoad() {

        frameWinner.clipsToBounds = true
        frameWinner.layer.cornerRadius = 10
        buttonEnd.layer.cornerRadius = 23
        buttonEnd.clipsToBounds = true
        winnerLabel.text = playername

    }
    

}
