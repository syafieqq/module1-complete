//
//  GameVC.swift
//  WarApp
//
//  Created by megat on 21/03/2019.
//  Copyright © 2019 Megat Syafiq. All rights reserved.
//

import UIKit

class GameVC: UIViewController {
    
    var playerName = ""
    var leftScore = 0
    var rightScore = 0
    
    @IBOutlet weak var playerNameLabel: UILabel!
    @IBOutlet weak var winnerLabel: UILabel!
    @IBOutlet weak var playerMarkLabel: UILabel!
    @IBOutlet weak var botMarkLabel: UILabel!
    @IBOutlet weak var playerImage: UIImageView!
    @IBOutlet weak var botImage: UIImageView!
    @IBAction func dealButtonDidTapped(_ sender: UIButton) {
        deal()
    }
    
    func deal () {
        //random two number
        let leftRandomNumber = arc4random_uniform(13) + 2
        let rightRandomNumber = arc4random_uniform(13) + 2
        
        playerImage.image = UIImage(named: "card\(leftRandomNumber)")
        botImage.image = UIImage(named: "card\(rightRandomNumber)")
        
        if leftRandomNumber > rightRandomNumber {
            winnerLabel.text = "\(playerName) Win!"
            leftScore = leftScore + 1
            playerMarkLabel.text = "\(leftScore)"
        } else if rightRandomNumber > leftRandomNumber {
            winnerLabel.text = "Bot Win!"
            rightScore += 1
            botMarkLabel.text = "\(rightScore)"
        } else if rightRandomNumber == leftRandomNumber {
            winnerLabel.text = "DRAW!!"
        }
        
        if playerMarkLabel.text == "10" || botMarkLabel.text == "10" {
            performSegue(withIdentifier: "segueWin", sender: self)   
        }

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        let viewcontroller = segue.destination as! EndVC
        viewcontroller.playername = "\(winnerLabel.text ?? "")"

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playerNameLabel.text = playerName
        playerMarkLabel.text = "\(leftScore)"
        botMarkLabel.text = "\(rightScore)"
        
        
    }
    
    
    
}
