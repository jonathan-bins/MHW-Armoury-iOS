//
//  ArmorDetailViewController.swift
//  MHW Armoury
//
//  Created by Jonathan Bins on 8/9/20.
//  Copyright © 2020 Jonathan Bins. All rights reserved.
//

import UIKit

class ArmorDetailViewController: UIViewController {
    
    @IBOutlet weak var rankLbl: UILabel!
    
    @IBOutlet weak var lbl: UILabel!
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    
    
//**********************************************//
        
    var armorHead = UIImage(named: "armor head")
    
    var rank = ""
    
    var name = ""

//**********************************************//
        
    override func viewDidLoad() {
//        segmentControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .selected)
//        segmentControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .normal)
        
        segmentControl.setImage(armorHead, forSegmentAt: 0)
        super.viewDidLoad()
        
        rankLbl.text = "\(rank)"
        
        lbl.text = "\(name)"
        
        
        }
    }
