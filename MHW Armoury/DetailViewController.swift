//
//  DetailViewController.swift
//  MHW Armoury
//
//  Created by Jonathan Bins on 7/24/20.
//  Copyright © 2020 Jonathan Bins. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    //rarity color
    @IBOutlet weak var rarityColor: UIImageView!
    
    //weapon name
    @IBOutlet weak var lbl: UILabel!
    
    //rarity number
    @IBOutlet weak var num: UILabel!
    
    //attack power
    @IBOutlet weak var atk: UILabel!
    
    //sharpness
    @IBOutlet weak var sharp: UILabel!
    
    //affinity
    @IBOutlet weak var afn: UILabel!
    
    //element image
    @IBOutlet weak var imgElm: UIImageView!
    
    //element name
    @IBOutlet weak var lblElm: UILabel!
    
    //element power
    @IBOutlet weak var elmNum: UILabel!
    
    //elderseal
    @IBOutlet weak var elder: UILabel!
    
    //slots
    @IBOutlet weak var slot: UILabel!
    
    //defense
    @IBOutlet weak var def: UILabel!
    
    //material 1
    @IBOutlet weak var mat1: UIImageView!
    
    //material 2
    @IBOutlet weak var mat2: UIImageView!
    
    //material 3
    @IBOutlet weak var mat3: UIImageView!
    
    //material 4
    @IBOutlet weak var mat4: UIImageView!
    
    //material name 1
    @IBOutlet weak var matName1: UILabel!
    
    //material name 2
    @IBOutlet weak var matName2: UILabel!
    
    //material name 3
    @IBOutlet weak var matName3: UILabel!
    
    //material name 4
    @IBOutlet weak var matName4: UILabel!
    
    //multiplier 1
    @IBOutlet weak var mult1: UILabel!
    
    //multiplier 2
    @IBOutlet weak var mult2: UILabel!
    
    //multiplier 3
    @IBOutlet weak var mult3: UILabel!
    
    //multiplier 4
    @IBOutlet weak var mult4: UILabel!
    
    //zenny
    @IBOutlet weak var zen: UILabel!
    
//**********************************************//
    
    var image = UIImage()
    
    var name = ""
    
    var number = ""
    
    var attack = ""
    
    var sharpness = ""
    
    var affinity = ""
    
    var elmImage = UIImage()
    
    var elmName = ""
    
    var elmNumber = ""
    
    var elderseal = ""
    
    var slots = ""
    
    var defense = ""
    
    var material1 = UIImage()
    var material2 = UIImage()
    var material3 = UIImage()
    var material4 = UIImage()
    
    var materialName1 = ""
    var materialName2 = ""
    var materialName3 = ""
    var materialName4 = ""
    
    var multiplier1 = ""
    var multiplier2 = ""
    var multiplier3 = ""
    var multiplier4 = ""
    
    var zenny = ""

//**********************************************//
    
    override func viewDidLoad() {
        super.viewDidLoad()

        rarityColor.image = image
        
        lbl.text = "\(name)"
        
        num.text = "\(number)"
        
        atk.text = "\(attack)"
        
        afn.text = "\(affinity)"
        
        sharp.text = "\(sharpness)"
        
        imgElm.image = elmImage
        
        lblElm.text = "\(elmName)"
        
        elmNum.text = "\(elmNumber)"
        
        elder.text = "\(elderseal)"
        
        slot.text = "\(slots)"
        
        def.text = "\(defense)"
        
        mat1.image = material1
        mat2.image = material2
        mat3.image = material3
        mat4.image = material4
        
        matName1.text = "\(materialName1)"
        matName2.text = "\(materialName2)"
        matName3.text = "\(materialName3)"
        matName4.text = "\(materialName4)"
        
        mult1.text = "\(multiplier1)"
        mult2.text = "\(multiplier2)"
        mult3.text = "\(multiplier3)"
        mult4.text = "\(multiplier4)"
        
        zen.text = "\(zenny)"
    }
}
