//
//  LowArmorViewController.swift
//  MHW Armoury
//
//  Created by Jonathan Bins on 8/9/20.
//  Copyright © 2020 Jonathan Bins. All rights reserved.
//

import UIKit

class LowArmorViewController: UIViewController {

    //rank
    var rank = ["Low Rank"]
    
    //armor name
    var name =
    ["Rathalos"]
    
    //rarity color image
    var color =
    [""]
    
    //rarity number
    var number =
    [""]
    
    //attack power
    var attack =
    [""]
    
    //sharpness level
    var sharpness =
    [""]
    
    //affinity
    var affinity =
    [""]
    
    //element image
    var elmImage =
    [""]
    
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
    [""]
    //material name 1
    var materialName1 =
    [""]
    //multiplier 1
    var multiplier1 =
    [""]
    
    //material image 2
    var material2 =
    [""]
    //material name 2
    var materialName2 =
    [""]
    //multiplier 2
    var multiplier2 =
    [""]
    
    //material image 3
    var material3 =
    [""]
    //material name 3
    var materialName3 =
    [""]
    //multiplier 3
    var multiplier3 =
    [""]
    
    //material image 4
    var material4 =
    [""]
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

extension LowArmorViewController: UITableViewDelegate, UITableViewDataSource {
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
        let vc = storyboard?.instantiateViewController(withIdentifier: "ArmorDetailViewController") as? ArmorDetailViewController

        vc?.rank = "Low Rank"
        
        vc?.name = name[indexPath.row]

        
        
        self.navigationController?.pushViewController(vc!, animated: true)
    }
}

    //search bar
extension LowArmorViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchName = name.filter({$0.lowercased().prefix(searchText.count) == searchText.lowercased()})
        searching = true
        tableView.reloadData()
    }
}
