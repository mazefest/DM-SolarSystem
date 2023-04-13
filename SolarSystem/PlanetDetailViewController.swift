//
//  PlanetDetailViewController.swift
//  SolarSystem
//
//  Created by Colby Mehmen on 4/5/23.
//

import UIKit

class PlanetDetailViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    var planet: Planet? {
        didSet {
            updateViews()
        }
    }
    
    @IBOutlet weak var planetImage: UIImageView!
    @IBOutlet weak var planetOrder: UILabel!
    @IBOutlet weak var planetOrdinalSuffix: UILabel!
    @IBOutlet weak var planetName: UILabel!
    @IBOutlet weak var planetNamesake: UILabel!
    @IBOutlet weak var detailCollectionView: UICollectionView!
    @IBOutlet weak var favoriteButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailCollectionView.dataSource = self
        detailCollectionView.delegate = self
        favoriteButton.tintColor = .systemPurple
        updateViews()
        updateFavoriteStatus()

    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionViewWidth = collectionView.frame.width
        return .init(width: (collectionViewWidth / 2) - 20, height: 70.0)
    }

    private func updateViews() {
        guard let planet = planet, isViewLoaded else { return }
        planetImage.image = UIImage(named: planet.imageName)
        planetOrder.text = planet.orderNumber.description
        planetOrdinalSuffix.text = " \(planet.orderNumber.suffix) planet"
        planetName.text = planet.planetName.uppercased()
        planetNamesake.text = planet.namesake
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellUtil.planetDeatilCell, for: indexPath) as? DetailCollectionViewCell  else { return UICollectionViewCell() }
        
        cell.planetDetailIcon.alpha = 0.5
        cell.planetDetailIcon.image = UIImage(systemName: "globe")
        
        guard let planet = planet else { return UICollectionViewCell() }
        
        switch indexPath.item {
        case 0:
            cell.planetDetailTitle.text = "Day Length"
            cell.planetDetailDetail.text = "\(planet.dayLengthInEarthDays) days"
            
        case 1:
            cell.planetDetailTitle.text = "Year Length"
            cell.planetDetailDetail.text = "\(planet.yearLengthInDays) days"
            
        case 2:
            cell.planetDetailTitle.text = "Radius"
            cell.planetDetailDetail.text = "\(planet.radiusInMiles) miles"
            
        case 3:
            cell.planetDetailTitle.text = "Moon Count"
            cell.planetDetailDetail.text = "\(planet.moonCount)"
            
        case 4:
            cell.planetDetailTitle.text = "Ring Count"
            cell.planetDetailDetail.text = "\(planet.ringCount)"
            
        case 5:
            cell.planetDetailTitle.text = "Plant Type"
            cell.planetDetailDetail.text = "\(planet.planetType)"
            
        case 6:
            cell.planetDetailTitle.text = "Distance from Sun"
            cell.planetDetailDetail.text = "\(planet.distanceFromSun) AU"
            
        case 7:
            cell.planetDetailTitle.text = "Galaxy"
            cell.planetDetailDetail.text = "Milky Way"
            
        default:
            break
        }
        
        return cell
    }
    
    func updateFavoriteStatus() {
        guard let planet = planet else {
            return
        }
        favoriteButton.image = UIImage(systemName: planet.favorite ? "star.circle.fill" : "star.circle")
    }

    @IBAction func onFavoriteButtonTapped(_ sender: Any) {
        guard let planet = planet else {
            return
        }
        PlanetController.shared.updateFavorite(planet: planet)
        updateFavoriteStatus()
    }
}
