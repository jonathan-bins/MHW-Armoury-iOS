//
//  GreatSwordViewController.swift
//  MHW Armoury
//
//  Created by Jonathan Bins on 7/24/20.
//  Copyright © 2020 Jonathan Bins. All rights reserved.
//

import UIKit

class GreatSwordViewController: UIViewController {

    //weapon name
    var name =
    ["Buster Sword I",
    "Buster Sword II",
    "Buster Sword III",
    "Buster Blade I",
    "Buster Blade II",
    "Buster Blade III",
    "Chrome Razor I",
    "Chrome Razor II",
    "Chrome Deathscythe I",
    "Chrome Deathscythe II",
    "Chrome Deathscythe III",
    "Bone Blade I",
    "Bone Blade II",
    "Bone Blade III",
    "Bone Slasher I",
    "Bone Slasher II",
    "Bone Slasher III"]
    
    //rarity color image
    var color =
    ["gs rarity 1-2",
    "gs rarity 1-2",
    "gs rarity 1-2",
    "gs rarity 3",
    "gs rarity 4",
    "gs rarity 5",
    "gs rarity 6",
    "gs rarity 6",
    "gs rarity 9",
    "gs rarity 10",
    "gs rarity 11",
    "gs rarity 1-2",
    "gs rarity 1-2",
    "gs rarity 1-2",
    "gs rarity 3",
    "gs rarity 4",
    "gs rarity 5"]
    
    //rarity number
    var number =
    ["Rarity 1",
    "Rarity 1",
    "Rarity 2",
    "Rarity 3",
    "Rarity 4",
    "Rarity 5",
    "Rarity 6",
    "Rarity 6",
    "Rarity 9",
    "Rarity 10",
    "Rarity 11",
    "Rarity 1",
    "Rarity 1",
    "Rarity 2",
    "Rarity 3",
    "Rarity 4",
    "Rarity 5"]
    
    //attack power
    var attack =
    ["384",
    "432",
    "480",
    "576",
    "624",
    "672",
    "720",
    "864",
    "1056",
    "1152",
    "1248",
    "480",
    "528",
    "576",
    "672",
    "720",
    "768"]
    
    //sharpness level
    var sharpness =
    ["White"]
    
    //affinity
    var affinity =
    ["0%",
    "0%",
    "0%",
    "0%",
    "0%",
    "0%",
    "0%",
    "0%",
    "0%",
    "0%",
    "0%",
    "0%",
    "0%",
    "0%",
    "0%",
    "0%",
    "0%"]
    
    //element image
    var elmImage =
    ["empty",
    "empty",
    "empty",
    "empty",
    "empty",
    "poison",
    "poison",
    "poison",
    "poison",
    "poison",
    "poison",
    "empty",
    "empty",
    "empty",
    "empty",
    "empty",
    "ice"]
    
    //element name
    var elmName =
    ["",
    "",
    "",
    "",
    "",
    "Poison",
    "Poison",
    "Poison",
    "Poison",
    "Poison",
    "Poison",
    "",
    "",
    "",
    "",
    "",
    "Ice"]
    
    //element damage
    var elmNumber =
    ["None",
    "None",
    "None",
    "None",
    "None",
    "(240)",
    "(330)",
    "(420)",
    "(480)",
    "(510)",
    "(540)",
    "",
    "",
    "",
    "",
    "",
    "(180)"]
    
    //elderseal
    var elderseal =
    ["None",
    "None",
    "None",
    "None",
    "None",
    "None",
    "None",
    "None",
    "None",
    "None",
    "None",
    "None",
    "None",
    "None",
    "None",
    "None",
    "None"]
    
    //jewel slots
    var slots =
    ["- - -",
    "- - -",
    "- - -",
    "- - -",
    "- - -",
    "1 - -",
    "1 - -",
    "1 1 -",
    "1 1 -",
    "1 1 -",
    "1 1 -",
    "- - -",
    "- - -",
    "- - -",
    "- - -",
    "- - -",
    "1 - -"]
    
    //defense
    var defense =
    ["-",
    "-",
    "-",
    "-",
    "-",
    "-",
    "-",
    "-",
    "-",
    "-",
    "-",
    "-",
    "-",
    "-",
    "-",
    "-",
    "-"]
    
    //material image 1
    var material1 =
    ["ore white",
    "ore white"]
    //material name 1
    var materialName1 =
    ["Iron Ore",
    "Iron Ore"]
    //multiplier 1
    var multiplier1 =
    ["X 1",
    "X 2"]
    
    //material image 2
    var material2 =
    ["empty",
    "empty"]
    //material name 2
    var materialName2 =
    ["",
    ""]
    //multiplier 2
    var multiplier2 =
    ["",
    ""]
    
    //material image 3
    var material3 =
    ["empty",
    "empty"]
    //material name 3
    var materialName3 =
    ["",
    ""]
    //multiplier 3
    var multiplier3 =
    ["",
    ""]
    
    //material image 4
    var material4 =
    ["empty",
    "empty"]
    //material name 4
    var materialName4 =
    ["",
    ""]
    //multiplier 4
    var multiplier4 =
    ["",
    ""]
    
    //zenny
    var zenny =
    ["100z",
    "200z"]
    
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

extension GreatSwordViewController: UITableViewDelegate, UITableViewDataSource {
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
extension GreatSwordViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchName = name.filter({$0.lowercased().prefix(searchText.count) == searchText.lowercased()})
        searching = true
        tableView.reloadData()
    }
}
