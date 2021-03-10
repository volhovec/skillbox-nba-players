//
//  TeamDetailsViewController.swift
//  Skillbox NBA Players
//
//  Created by Leonid Stefanenko on 09.03.2021.
//

import UIKit

class TeamDetailsViewController: UIViewController {
    
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var conferentionLabel: UILabel!
    
    var team: Team?
    
    let teams: [Team] = [
        Team(
            title: "Lakers",
            city: "Los Angeles",
            conferention: "West"
        ),
        Team(
            title: "Heats",
            city: "Miami",
            conferention: "Heat"
        ),
        Team(
            title: "N/A",
            city: "N/A",
            conferention: "N/A"
        ),
    ]

    func getTeam(fullTitle: String) -> Team? {
        teams.first {$0.fullTitle == fullTitle}
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        cityLabel.text = team?.city
        conferentionLabel.text = team?.conferention
        
        navigationItem.title = team?.title
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
}
