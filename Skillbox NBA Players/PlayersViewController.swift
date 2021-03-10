//
//  PlayersViewController.swift
//  Skillbox NBA Players
//
//  Created by Leonid Stefanenko on 09.03.2021.
//

import UIKit

class PlayersViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let players: [Player] = [
        Player(
            firstName: "LeBron",
            lastName: "James",
            teamName: "Los Angeles Lakers",
            position: "SF",
            height: "6'8\""
        ),
        Player(
            firstName: "Anthony",
            lastName: "Davis",
            teamName: "Los Angeles Lakers",
            position: "PF",
            height: "7'0\""
        ),
        Player(
            firstName: "Jimmy",
            lastName: "Butler",
            teamName: "Miami Heats",
            position: "SG",
            height: "6'6\""
        ),
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerCell", for: indexPath)
        
        let player = players[indexPath.row]
        cell.textLabel?.text = player.fullName
        cell.detailTextLabel?.text = player.teamName
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let viewController = storyboard.instantiateViewController(identifier: "PlayerDetailsViewController") as! PlayerDetailsViewController
        
        viewController.player = players[indexPath.row]
        navigationController?.pushViewController(viewController, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Players"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
}
