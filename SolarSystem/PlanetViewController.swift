//
//  PlanetViewController.swift
//  SolarSystem
//
//  Created by Colby Mehmen on 4/4/23.
//

import UIKit

class PlanetViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Solar System"
                navigationController?.navigationBar.prefersLargeTitles = true
                navigationController?.navigationBar.tintColor = UIColor.white
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }
    

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70.0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PlanetController.shared.planets.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let planet = PlanetController.shared.planets[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: CellUtil.planetCell, for: indexPath)
        var content = cell.defaultContentConfiguration()

        content.text = planet.planetName.capitalized
        content.secondaryText = planet.planetType
        
        let backgroundView = UIView()
        backgroundView.backgroundColor = UIColor.systemGray6
        cell.selectedBackgroundView = backgroundView

        content.textProperties.color = .label
        content.textProperties.font = UIFont.preferredFont(forTextStyle: .headline)
        content.textToSecondaryTextVerticalPadding = 4
        
        content.secondaryTextProperties.color = .secondaryLabel
        content.secondaryTextProperties.font = UIFont.preferredFont(forTextStyle: .subheadline)
        
        content.image = UIImage(systemName: (planet.favorite) ? "circle.fill": "circle")
        content.imageProperties.tintColor = .systemPurple
        content.imageToTextPadding = 16
        cell.contentConfiguration = content
        
        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tappedIndexPath = tableView.indexPathForSelectedRow else { return }
        let planet = PlanetController.shared.planets[tappedIndexPath.row]
        if let detailVc = segue.destination as? PlanetDetailViewController {
            detailVc.planet = planet
            
        }
    }

}
