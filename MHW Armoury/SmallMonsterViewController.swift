//
//  SmallMonsterViewController.swift
//  MHW Armoury
//
//  Created by Jonathan Bins on 8/5/20.
//  Copyright © 2020 Jonathan Bins. All rights reserved.
//

import UIKit

class SmallMonsterViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //small monster names
    var small =
    ["Aptonoth",
    "Jagras",
    "Mernos",
    "Vespoid",
    "Mosswine",
    "Apceros",
    "Kestodon",
    "Noios",
    "Gajau",
    "Kelbi",
    "Raphinos",
    "Shamos",
    "Girros",
    "Hornetaur",
    "Gastodon",
    "Barnos",
    "Popo",
    "Anteka",
    "Wulg",
    "Cortos"]
    
    //small monster images
    var smallImg =
    ["Aptonoth",
    "Jagras",
    "Mernos",
    "Vespoid",
    "Mosswine",
    "Apceros",
    "Kestodon Male",
    "Noios",
    "Gajau",
    "Kelbi",
    "Raphinos",
    "Shamos",
    "Girros",
    "Hornetaur",
    "Gastodon",
    "Barnos",
    "Popo",
    "Anteka",
    "Wulg",
    "Cortos"]
    
    var monsterCarves = ["Carves"]
    
//**********************************************//
    
    //low rank carves
    var lowRankCarveLine1 =
    ["Raw Meat",
    "Jagras Hide",
    "Wingdrake Hide",
    "Vespoid Shell",
    "Mosswine Hide",
    "Raw Meat",
    "Kestodon Shell",
    "Wingdrake Hide",
    "Gajau Whisker",
    "Kelbi Horn",
    "Whingdrake Hide",
    "Shamos Hide",
    "Girros Hide",
    "Hornetaur Shell",
    "N/A",
    "Wingdrake Hide",
    "N/A",
    "N/A",
    "N/A",
    "N/A"]
    var lowRankCarveLine2 =
    ["Monster Bone S",
    "Jagras Scale",
    "Raw Meat",
    "Vespoid Wing",
    "",
    "",
    "Kestodon Scalp",
    "Screamer Sac",
    "Gajau Skin",
    "Warm Pelt",
    "Raw Meat",
    "Shamos Scale",
    "Girros Hide",
    "Hornetaur Wing",
    "",
    "",
    "",
    "",
    "",
    ""]
    var lowRankCarveLine3 =
    ["",
    "Sharp Claw",
    "",
    "Monster Fluid",
    "",
    "",
    "",
    "",
    "",
    "White Liver",
    "",
    "Shamos Claw",
    "Girros Fang",
    "Monster Fuild",
    "",
    "",
    "",
    "",
    "",
    ""]
    var lowRankCarveLine4 =
    ["",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "Raw Meat",
    "",
    "",
    "",
    "Hornetaur Head",
    "",
    "",
    "",
    "",
    "",
    ""]
    var lowRankCarveLine5 =
    ["",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    ""]
    
//**********************************************//
    
    //high rank carves
    var highRankCarveLine1 =
    ["N/A",
    "Jagras Hide +",
    "Wingdrake Hide +",
    "Vespoid Carapace",
    "Mosswine Hide",
    "Raw Meat",
    "Kestodon Shell",
    "Wingdrake Hide +",
    "Gajau Scale",
    "High-quality Pelt",
    "Wingdrake Hide +",
    "Shamos Hide +",
    "N/A",
    "Hornetaur Carapace",
    "Gastodon Carapace",
    "Barnos Hide +",
    "N/A",
    "N/A",
    "N/A",
    "N/A"]
    var highRankCarveLine2 =
    ["",
    "Jagras Scale +",
    "Raw Meat",
    "Vespoid Innerwing",
    "",
    "",
    "Kestodon Scalp",
    "Screamer Sac",
    "Grand Gajau Whisker",
    "Raw Meat",
    "Raw Meat",
    "Shamos Scale +",
    "",
    "Hornetaur Innerwing",
    "Gastodon Horn",
    "Barnos Talon",
    "",
    "",
    "",
    ""]
    var highRankCarveLine3 =
    ["",
    "Piercing Claw",
    "",
    "Monster Broth",
    "",
    "",
    "",
    "",
    "",
    "White Liver",
    "",
    "",
    "",
    "Monster Broth",
    "",
    "",
    "",
    "",
    "",
    ""]
    var highRankCarveLine4 =
    ["",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    ""]
    var highRankCarveLine5 =
    ["",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    ""]
    
//**********************************************//
    
    //master rank carves
    var masterRankCarveLine1 =
    ["N/A",
    "N/A",
    "N/A",
    "N/A",
    "N/A",
    "N/A",
    "N/A",
    "N/A",
    "N/A",
    "N/A",
    "N/A",
    "N/A",
    "N/A",
    "Hornetaur Razorwing",
    "N/A",
    "N/A",
    "Raw Meat",
    "Anteka Antler",
    "Wulg Thickfur",
    "Wingdrake Finehide"]
    var masterRankCarveLine2 =
    ["",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "Monster Essence",
    "",
    "",
    "Prized Pelt",
    "Prized Pelt",
    "Tough Claw",
    "Cortos Hardclaw"]
    var masterRankCarveLine3 =
    ["",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    ""]
    var masterRankCarveLine4 =
    ["",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    ""]
    var masterRankCarveLine5 =
    ["",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    ""]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
            return small.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CellTableViewCell
        
            cell?.lbl.text = small[indexPath.row]
            
            cell?.img1.image = UIImage(named: smallImg[indexPath.row])
       
        return cell!
    }
        
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SmallMonsterDetailViewController") as? SmallMonsterDetailViewController
        
            vc?.image = UIImage(named: smallImg[indexPath.row])!
            
            vc?.name = small[indexPath.row]
            
            vc?.monsterCarves = "Carves"
            
        //low rank carves
            vc?.lowRankCarveLine1 = lowRankCarveLine1[indexPath.row]
            
            vc?.lowRankCarveLine2 = lowRankCarveLine2[indexPath.row]
            
            vc?.lowRankCarveLine3 = lowRankCarveLine3[indexPath.row]
            
            vc?.lowRankCarveLine4 = lowRankCarveLine4[indexPath.row]
            
            vc?.lowRankCarveLine5 = lowRankCarveLine5[indexPath.row]
            
        //high rank carves
            vc?.highRankCarveLine1 = highRankCarveLine1[indexPath.row]
            
            vc?.highRankCarveLine2 = highRankCarveLine2[indexPath.row]
            
            vc?.highRankCarveLine3 = highRankCarveLine3[indexPath.row]
            
            vc?.highRankCarveLine4 = highRankCarveLine4[indexPath.row]
            
            vc?.highRankCarveLine5 = highRankCarveLine5[indexPath.row]
            
        //master rank carves
            vc?.masterRankCarveLine1 = masterRankCarveLine1[indexPath.row]
            
            vc?.masterRankCarveLine2 = masterRankCarveLine2[indexPath.row]
            
            vc?.masterRankCarveLine3 = masterRankCarveLine3[indexPath.row]
            
            vc?.masterRankCarveLine4 = masterRankCarveLine4[indexPath.row]
            
            vc?.masterRankCarveLine5 = masterRankCarveLine5[indexPath.row]
        
        self.navigationController?.pushViewController(vc!, animated: true)
        }
    
    @IBAction func segmentChange(_ sender: Any) {
        tableView.reloadData()
    }
}
