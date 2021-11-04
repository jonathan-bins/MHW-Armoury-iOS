//
//  SmallMonsterDetailViewController.swift
//  MHW Armoury
//
//  Created by Jonathan Bins on 8/5/20.
//  Copyright © 2020 Jonathan Bins. All rights reserved.
//

import UIKit

class SmallMonsterDetailViewController: UIViewController {

    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var lbl: UILabel!
    
    @IBOutlet weak var titleLbl: UILabel!
    
    @IBOutlet weak var carveLine1: UILabel!
    @IBOutlet weak var carveLine2: UILabel!
    @IBOutlet weak var carveLine3: UILabel!
    @IBOutlet weak var carveLine4: UILabel!
    @IBOutlet weak var carveLine5: UILabel!
    
    var image = UIImage()
        
    var type = ""
        
    var name = ""
        
    var viewDisplay = UIImage()
        
    var monsterCarves = ""
    var monsterRewards = ""
        
    var lowRankCarveLine1 = ""
    var lowRankCarveLine2 = ""
    var lowRankCarveLine3 = ""
    var lowRankCarveLine4 = ""
    var lowRankCarveLine5 = ""
    var lowRankCarveLine6 = ""
        
    var highRankCarveLine1 = ""
    var highRankCarveLine2 = ""
    var highRankCarveLine3 = ""
    var highRankCarveLine4 = ""
    var highRankCarveLine5 = ""
        
    var masterRankCarveLine1 = ""
    var masterRankCarveLine2 = ""
    var masterRankCarveLine3 = ""
    var masterRankCarveLine4 = ""
    var masterRankCarveLine5 = ""

    //**********************************************//
        
    override func viewDidLoad() {
        super.viewDidLoad()
        segmentControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .selected)
        segmentControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .normal)
        super.viewDidLoad()
            
        img.image = image
            
        lbl.text = "\(name)"
            
        titleLbl.text = "\(monsterCarves)"
            
        carveLine1.text = "\(lowRankCarveLine1)"
            
        carveLine2.text = "\(lowRankCarveLine2)"
            
        carveLine3.text = "\(lowRankCarveLine3)"
            
        carveLine4.text = "\(lowRankCarveLine4)"
            
        carveLine5.text = "\(lowRankCarveLine5)"
        }
        
    @IBAction func segmentChange(_ sender: Any) {
        if segmentControl.selectedSegmentIndex == 0 {
            titleLbl.text = "\(monsterCarves)"
                
            carveLine1.text = "\(lowRankCarveLine1)"
            
            carveLine2.text = "\(lowRankCarveLine2)"
                
            carveLine3.text = "\(lowRankCarveLine3)"
                
            carveLine4.text = "\(lowRankCarveLine4)"
                
            carveLine5.text = "\(lowRankCarveLine5)"
        }
        if segmentControl.selectedSegmentIndex == 1 {
            titleLbl.text = "\(monsterCarves)"
            
            carveLine1.text = "\(highRankCarveLine1)"
            
            carveLine2.text = "\(highRankCarveLine2)"
                
            carveLine3.text = "\(highRankCarveLine3)"
                
            carveLine4.text = "\(highRankCarveLine4)"
                
            carveLine5.text = "\(highRankCarveLine5)"
        }
        if segmentControl.selectedSegmentIndex == 2 {
            titleLbl.text = "\(monsterCarves)"
            
            carveLine1.text = "\(masterRankCarveLine1)"
            
            carveLine2.text = "\(masterRankCarveLine2)"
                
            carveLine3.text = "\(masterRankCarveLine3)"
                
            carveLine4.text = "\(masterRankCarveLine4)"
                
            carveLine5.text = "\(masterRankCarveLine5)"
        }
    }
}
