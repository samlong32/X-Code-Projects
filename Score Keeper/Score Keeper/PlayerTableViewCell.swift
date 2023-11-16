//
//  PlayerTableViewCell.swift
//  Score Keeper
//
//  Created by sam long on 11/13/23.
//

import UIKit

class PlayerTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    weak var delegate: PlayerTableViewCellDelegate?
    var indexPath: IndexPath?
    
    var player: Player?
    
    
    func update(with player: Player) {
        self.player = player
        self.nameLabel.text = player.name
        self.scoreLabel.text = "\(player.score)"
        self.stepper.value = Double(player.score)
    }
    
    @IBAction func stepperChanged(_ sender: UIStepper) {
        guard var indexPath = self.indexPath else { return }
      
        let newScore = Int(sender.value)
        self.scoreLabel.text = "\(newScore)"
        delegate?.didUpdateScore(newScore, forPlayerAt: indexPath)
    }
}
    
