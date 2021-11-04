//
//  DualBladesViewController.swift
//  MHW Armoury
//
//  Created by Jonathan Bins on 7/29/20.
//  Copyright © 2020 Jonathan Bins. All rights reserved.
//

import UIKit

class DualBladesViewController: UIViewController {

    //weapon name
    var name =
    ["test"]
    
    //rarity color image
    var color =
    ["empty"]
    
    //rarity number
    var number =
    ["test"]
    
    //attack power
    var attack =
    ["100"]
    
    //sharpness level
    var sharpness =
    [""]
    
    //affinity
    var affinity =
    [""]
    
    //element image
    var elmImage =
    ["empty"]
    
    //element name
    var elmName =
    [""]
    
    //element damage
    var elmNumber =
    [""]
    
    //elderseal
    var elderseal =
    [""]
    
    //jewel slots
    var slots =
    [""]
    
    //defense
    var defense =
    [""]
    
    //material image 1
    var material1 =
    ["empty"]
    //material name 1
    var materialName1 =
    [""]
    //multiplier 1
    var multiplier1 =
    [""]
    
    //material image 2
    var material2 =
    ["empty"]
    //material name 2
    var materialName2 =
    [""]
    //multiplier 2
    var multiplier2 =
    [""]
    
    //material image 3
    var material3 =
    ["empty"]
    //material name 3
    var materialName3 =
    [""]
    //multiplier 3
    var multiplier3 =
    [""]
    
    //material image 4
    var material4 =
    ["empty"]
    //material name 4
    var materialName4 =
    [""]
    //multiplier 4
    var multiplier4 =
    [""]
    
    //zenny
    var zenny =
    [""]
    
    var searchName = [String]()
    var searching = false
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
   
    override func viewDidLoad() {
        searchBar.searchTextField.backgroundColor = .white
        searchBar.searchTextField.textColor = .black
        super.viewDidLoad()
    }
}

extension DualBladesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searching {
            return searchName.count
        } else {
            return name.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CellTableViewCell
        if searching {
            cell?.lbl.text = searchName[indexPath.row]
        } else {
            cell?.lbl.text = name[indexPath.row]
        }
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController

        vc?.image = UIImage(named: color[indexPath.row])!

        vc?.name = name[indexPath.row]

        vc?.number = number[indexPath.row]

        vc?.attack = attack[indexPath.row]

        vc?.sharpness = sharpness[indexPath.row]

        vc?.affinity = affinity[indexPath.row]

        vc?.elmImage = UIImage(named: elmImage[indexPath.row])!

        vc?.elmName = elmName[indexPath.row]

        vc?.elmNumber = elmNumber[indexPath.row]

        vc?.elderseal = elderseal[indexPath.row]

        vc?.slots = slots[indexPath.row]

        vc?.defense = defense[indexPath.row]
        
        vc?.material1 = UIImage(named: material1[indexPath.row])!
        vc?.material2 = UIImage(named: material2[indexPath.row])!
        vc?.material3 = UIImage(named: material3[indexPath.row])!
        vc?.material4 = UIImage(named: material4[indexPath.row])!
        
        vc?.materialName1 = materialName1[indexPath.row]
        vc?.materialName2 = materialName2[indexPath.row]
        vc?.materialName3 = materialName3[indexPath.row]
        vc?.materialName4 = materialName4[indexPath.row]
        
        vc?.multiplier1 = multiplier1[indexPath.row]
        vc?.multiplier2 = multiplier2[indexPath.row]
        vc?.multiplier3 = multiplier3[indexPath.row]
        vc?.multiplier4 = multiplier4[indexPath.row]
        
        vc?.zenny = zenny[indexPath.row]
        
        self.navigationController?.pushViewController(vc!, animated: true)
    }
}

    //search bar
extension DualBladesViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchName = name.filter({$0.lowercased().prefix(searchText.count) == searchText.lowercased()})
        searching = true
        tableView.reloadData()
    }
}

