//
//  GameViewController.swift
//  Score Keeper
//
//  Created by sam long on 11/12/23.
//

import UIKit

class GameViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, PlayerTableViewCellDelegate {
    
    var players: [Player] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    func configureUI() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        let point = sender.convert(CGPoint.zero, to: tableView)
        if let indexPath = tableView.indexPathForRow(at: point) {
            let rowIndex = indexPath.row
            players[rowIndex].score = Int(sender.value)
            tableView.reloadRows(at: [indexPath], with: .none)
        }
    }
    
    @IBAction func addButtonTapped(_ sender: UIButton) {
        if let addPlayerVC = storyboard?.instantiateViewController(withIdentifier: "AddPlayerViewController") as? AddPlayerViewController {
            addPlayerVC.completionHandler = { [weak self] name, score in
                let roundedScore = Int(score)
                let newPlayer = Player(name: name, stepperValue: 0.0, score: Double(roundedScore))
                self?.players.append(newPlayer)
                self?.players.sort { $0.score > $1.score }
                self?.tableView.reloadData()
            }
            
            present(addPlayerVC, animated: true, completion: nil)
        }
    }
    
    // TableView
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerCell", for: indexPath) as! PlayerTableViewCell
        let player = players[indexPath.row]
        cell.update(with: player)
        cell.delegate = self
        cell.indexPath = indexPath
        return cell
    }
    
    func didUpdateScore(_ newScore: Int, forPlayerAt indexPath: IndexPath) {
        players[indexPath.row].score = newScore
            players.sort { $0.score > $1.score } // Sort the players array based on score
            tableView.reloadData()
        }
}


