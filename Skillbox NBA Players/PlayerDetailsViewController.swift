//
//  PlayerDetailsViewController.swift
//  Skillbox NBA Players
//
//  Created by Leonid Stefanenko on 09.03.2021.
//

import UIKit

class PlayerDetailsViewController: UIViewController {
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var positionLabel: UILabel!
    @IBOutlet weak var teamButton: UIButton!
    
    var player: Player?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = player?.fullName
        navigationController?.navigationBar.prefersLargeTitles = true
        positionLabel.text = player?.position
        heightLabel.text   = player?.height
        
        teamButton.setTitle(player?.teamName, for: .normal)
    }

    @IBAction func onTeamButtonTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let viewController = storyboard.instantiateViewController(identifier: "TeamDetailsViewController") as! TeamDetailsViewController
        viewController.team = viewController.getTeam(fullTitle: player?.teamName ?? "N/A")
        navigationController?.pushViewController(viewController, animated: true)
    }
}
