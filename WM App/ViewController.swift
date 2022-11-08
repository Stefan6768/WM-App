//
//  ViewController.swift
//  WM App
//
//  Created by Stefan Schreiber on 08.11.22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return qualifiedTeams.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "wmCell", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        content.text = qualifiedTeams[indexPath.row]
        cell.contentConfiguration = content
        
        return cell
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var tableview: UITableView!
    
    
    let qualifiedTeams = ["Qatar", "Ecuador", "Senegal", "Netherlands", "England", "Iran", "USA", "Wales", "Argentina", "Saudi Arabia", "Mexico", "Poland", "France", "Australia", "Denmark", "Tunisia", "Spain", "Costa Rica", "Germany", "Japan", "Belgium", "Canada", "Morocco", "Croatia", "Brazil", "Serbia", "Switzerland", "Cameroon", "Portugal", "Ghana", "Uruguay", "South Korea"]


}

