//
//  LargeMonsterDetailViewController.swift
//  MHW Armoury
//
//  Created by Jonathan Bins on 7/30/20.
//  Copyright © 2020 Jonathan Bins. All rights reserved.
//

import UIKit

class LargeMonsterDetailViewController: UIViewController {
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var monType: UILabel!
    
    @IBOutlet weak var lbl: UILabel!
    
    @IBOutlet weak var titleLbl: UILabel!
    
    @IBOutlet weak var titleLbl2: UILabel!
    
    @IBOutlet weak var viewBar: UIImageView!
    
    //carve lines
    @IBOutlet weak var carveLine1: UILabel!
    @IBOutlet weak var carveLine2: UILabel!
    @IBOutlet weak var carveLine3: UILabel!
    @IBOutlet weak var carveLine4: UILabel!
    @IBOutlet weak var carveLine5: UILabel!
    
    //carve images
    @IBOutlet weak var carveImg1: UIImageView!
    @IBOutlet weak var carveImg2: UIImageView!
    @IBOutlet weak var carveImg3: UIImageView!
    @IBOutlet weak var carveImg4: UIImageView!
    @IBOutlet weak var carveImg5: UIImageView!
    
    //reward lines
    @IBOutlet weak var rewardLine1: UILabel!
    @IBOutlet weak var rewardLine2: UILabel!
    @IBOutlet weak var rewardLine3: UILabel!
    @IBOutlet weak var rewardLine4: UILabel!
    @IBOutlet weak var rewardLine5: UILabel!
    @IBOutlet weak var rewardLine6: UILabel!
    @IBOutlet weak var rewardLine7: UILabel!
    @IBOutlet weak var rewardLine8: UILabel!
    
    //reward images
    @IBOutlet weak var rewardImage1: UIImageView!
    @IBOutlet weak var rewardImage2: UIImageView!
    @IBOutlet weak var rewardImage3: UIImageView!
    @IBOutlet weak var rewardImage4: UIImageView!
    @IBOutlet weak var rewardImage5: UIImageView!
    @IBOutlet weak var rewardImage6: UIImageView!
    @IBOutlet weak var rewardImage7: UIImageView!
    @IBOutlet weak var rewardImage8: UIImageView!
    
    //element lines
    @IBOutlet weak var elementLine1: UILabel!
    @IBOutlet weak var elementLine2: UILabel!
    @IBOutlet weak var elementLine3: UILabel!
    @IBOutlet weak var elementLine4: UILabel!
    @IBOutlet weak var elementLine5: UILabel!
    
    //element images
    @IBOutlet weak var elementImg1: UIImageView!
    @IBOutlet weak var elementImg2: UIImageView!
    @IBOutlet weak var elementImg3: UIImageView!
    @IBOutlet weak var elementImg4: UIImageView!
    @IBOutlet weak var elementImg5: UIImageView!
    
    //ailment lines
    @IBOutlet weak var ailmentLine1: UILabel!
    @IBOutlet weak var ailmentLine2: UILabel!
    @IBOutlet weak var ailmentLine3: UILabel!
    @IBOutlet weak var ailmentLine4: UILabel!
    @IBOutlet weak var ailmentLine5: UILabel!
    @IBOutlet weak var ailmentLine6: UILabel!
    @IBOutlet weak var ailmentLine7: UILabel!
    @IBOutlet weak var ailmentLine8: UILabel!
    
    //ailment images
    @IBOutlet weak var ailmentImage1: UIImageView!
    @IBOutlet weak var ailmentImage2: UIImageView!
    @IBOutlet weak var ailmentImage3: UIImageView!
    @IBOutlet weak var ailmentImage4: UIImageView!
    @IBOutlet weak var ailmentImage5: UIImageView!
    @IBOutlet weak var ailmentImage6: UIImageView!
    @IBOutlet weak var ailmentImage7: UIImageView!
    @IBOutlet weak var ailmentImage8: UIImageView!
    
    //empty lines
    @IBOutlet weak var emptyLine6: UILabel!
    @IBOutlet weak var emptyLine7: UILabel!
    @IBOutlet weak var emptyLine8: UILabel!
    
    //empty images
    @IBOutlet weak var emptyImage6: UIImageView!
    @IBOutlet weak var emptyImage7: UIImageView!
    @IBOutlet weak var emptyImage8: UIImageView!
    
//**********************************************//
    
    var image = UIImage()
    
    var type = ""
    
    var name = ""
    
    var viewDisplay = UIImage()
    
    var elements = ""
    var elementsLine1 = ""
    var elementsLine2 = ""
    var elementsLine3 = ""
    var elementsLine4 = ""
    var elementsLine5 = ""
    
    var elementsImage1 = UIImage()
    var elementsImage2 = UIImage()
    var elementsImage3 = UIImage()
    var elementsImage4 = UIImage()
    var elementsImage5 = UIImage()
    
    var ailments = ""
    var ailmentsLine1 = ""
    var ailmentsLine2 = ""
    var ailmentsLine3 = ""
    var ailmentsLine4 = ""
    var ailmentsLine5 = ""
    var emptyLine = ""
    var emptyImage = UIImage()
    
    var ailmentsImage1 = UIImage()
    var ailmentsImage2 = UIImage()
    var ailmentsImage3 = UIImage()
    var ailmentsImage4 = UIImage()
    var ailmentsImage5 = UIImage()
    
    var monsterCarves = ""
    var monsterRewards = ""
    
    var monsterRewardsImage1 = UIImage()
    var monsterRewardsImage2 = UIImage()
    var monsterRewardsImage3 = UIImage()
    var monsterRewardsImage4 = UIImage()
    var monsterRewardsImage5 = UIImage()
    
    var lowRankCarveLine1 = ""
    var lowRankCarveLine2 = ""
    var lowRankCarveLine3 = ""
    var lowRankCarveLine4 = ""
    var lowRankCarveLine5 = ""
    var lowRankCarveLine6 = ""
    
    var lowCarvesImage1 = UIImage()
    var lowCarvesImage2 = UIImage()
    var lowCarvesImage3 = UIImage()
    var lowCarvesImage4 = UIImage()
    var lowCarvesImage5 = UIImage()
    
    var lowRankRewardLine1 = ""
    var lowRankRewardLine2 = ""
    var lowRankRewardLine3 = ""
    var lowRankRewardLine4 = ""
    var lowRankRewardLine5 = ""
    var lowRankRewardLine6 = ""
    var lowRankRewardLine7 = ""
    var lowRankRewardLine8 = ""
    
    var lowRewardImage1 = UIImage()
    var lowRewardImage2 = UIImage()
    var lowRewardImage3 = UIImage()
    var lowRewardImage4 = UIImage()
    var lowRewardImage5 = UIImage()
    var lowRewardImage6 = UIImage()
    var lowRewardImage7 = UIImage()
    var lowRewardImage8 = UIImage()
    
    var highRankCarveLine1 = ""
    var highRankCarveLine2 = ""
    var highRankCarveLine3 = ""
    var highRankCarveLine4 = ""
    var highRankCarveLine5 = ""
    
    var highCarvesImage1 = UIImage()
    var highCarvesImage2 = UIImage()
    var highCarvesImage3 = UIImage()
    var highCarvesImage4 = UIImage()
    var highCarvesImage5 = UIImage()
    
    var highRankRewardLine1 = ""
    var highRankRewardLine2 = ""
    var highRankRewardLine3 = ""
    var highRankRewardLine4 = ""
    var highRankRewardLine5 = ""
    var highRankRewardLine6 = ""
    var highRankRewardLine7 = ""
    var highRankRewardLine8 = ""
    
    var highRewardImage1 = UIImage()
    var highRewardImage2 = UIImage()
    var highRewardImage3 = UIImage()
    var highRewardImage4 = UIImage()
    var highRewardImage5 = UIImage()
    var highRewardImage6 = UIImage()
    var highRewardImage7 = UIImage()
    var highRewardImage8 = UIImage()
    
    var masterRankCarveLine1 = ""
    var masterRankCarveLine2 = ""
    var masterRankCarveLine3 = ""
    var masterRankCarveLine4 = ""
    var masterRankCarveLine5 = ""
    
    var masterCarvesImage1 = UIImage()
    var masterCarvesImage2 = UIImage()
    var masterCarvesImage3 = UIImage()
    var masterCarvesImage4 = UIImage()
    var masterCarvesImage5 = UIImage()
    
    var masterRankRewardLine1 = ""
    var masterRankRewardLine2 = ""
    var masterRankRewardLine3 = ""
    var masterRankRewardLine4 = ""
    var masterRankRewardLine5 = ""
    var masterRankRewardLine6 = ""
    var masterRankRewardLine7 = ""
    var masterRankRewardLine8 = ""
    
    var masterRewardImage1 = UIImage()
    var masterRewardImage2 = UIImage()
    var masterRewardImage3 = UIImage()
    var masterRewardImage4 = UIImage()
    var masterRewardImage5 = UIImage()
    var masterRewardImage6 = UIImage()
    var masterRewardImage7 = UIImage()
    var masterRewardImage8 = UIImage()

//**********************************************//
    
    override func viewDidLoad() {
        super.viewDidLoad()
        segmentControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .selected)
        segmentControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .normal)
        super.viewDidLoad()
        
        img.image = image
        
        monType.text = "\(type)"
        
        lbl.text = "\(name)"
        
        viewBar.image = viewDisplay
        
        titleLbl.text = "\(monsterCarves)"
        titleLbl2.text = "\(monsterRewards)"
        
        //large monster
        carveLine1.text = "\(lowRankCarveLine1)"
        carveImg1.image = lowCarvesImage1
        
        carveLine2.text = "\(lowRankCarveLine2)"
        carveImg2.image = lowCarvesImage2
        
        carveLine3.text = "\(lowRankCarveLine3)"
        carveImg3.image = lowCarvesImage3
        
        carveLine4.text = "\(lowRankCarveLine4)"
        carveImg4.image = lowCarvesImage4
        
        carveLine5.text = "\(lowRankCarveLine5)"
        carveImg5.image = lowCarvesImage5
        
        rewardLine1.text = "\(lowRankRewardLine1)"
        rewardImage1.image = lowRewardImage1
        
        rewardLine2.text = "\(lowRankRewardLine2)"
        rewardImage2.image = lowRewardImage2
        
        rewardLine3.text = "\(lowRankRewardLine3)"
        rewardImage3.image = lowRewardImage3
        
        rewardLine4.text = "\(lowRankRewardLine4)"
        rewardImage4.image = lowRewardImage4
        
        rewardLine4.text = "\(lowRankRewardLine4)"
        rewardImage4.image = lowRewardImage4
        
        rewardLine5.text = "\(lowRankRewardLine5)"
        rewardImage5.image = lowRewardImage5
        
        rewardLine6.text = "\(lowRankRewardLine6)"
        rewardImage6.image = lowRewardImage6
        
        rewardLine7.text = "\(lowRankRewardLine7)"
        rewardImage7.image = lowRewardImage7
        
        rewardLine8.text = "\(lowRankRewardLine8)"
        rewardImage8.image = lowRewardImage8
    }

    @IBAction func segmentChange(_ sender: Any) {
        if segmentControl.selectedSegmentIndex == 0 {
            titleLbl.text = "\(monsterCarves)"
            titleLbl2.text = "\(monsterRewards)"
            
        //large monsters
            carveLine1.text = "\(lowRankCarveLine1)"
            carveImg1.image = lowCarvesImage1
            
            carveLine2.text = "\(lowRankCarveLine2)"
            carveImg2.image = lowCarvesImage2
            
            carveLine3.text = "\(lowRankCarveLine3)"
            carveImg3.image = lowCarvesImage3
            
            carveLine4.text = "\(lowRankCarveLine4)"
            carveImg4.image = lowCarvesImage4
            
            carveLine5.text = "\(lowRankCarveLine5)"
            carveImg5.image = lowCarvesImage5
            
            rewardLine1.text = "\(lowRankRewardLine1)"
            rewardImage1.image = lowRewardImage1
            
            rewardLine2.text = "\(lowRankRewardLine2)"
            rewardImage2.image = lowRewardImage2
            
            rewardLine3.text = "\(lowRankRewardLine3)"
            rewardImage3.image = lowRewardImage3
            
            rewardLine4.text = "\(lowRankRewardLine4)"
            rewardImage4.image = lowRewardImage4
            
            rewardLine4.text = "\(lowRankRewardLine4)"
            rewardImage4.image = lowRewardImage4
            
            rewardLine5.text = "\(lowRankRewardLine5)"
            rewardImage5.image = lowRewardImage5
            
            rewardLine6.text = "\(lowRankRewardLine6)"
            rewardImage6.image = lowRewardImage6
            
            rewardLine7.text = "\(lowRankRewardLine7)"
            rewardImage7.image = lowRewardImage7
            
            rewardLine8.text = "\(lowRankRewardLine8)"
            rewardImage8.image = lowRewardImage8
        }
        if segmentControl.selectedSegmentIndex == 1 {
            titleLbl.text = "\(monsterCarves)"
            titleLbl2.text = "\(monsterRewards)"
           
            carveLine1.text = "\(highRankCarveLine1)"
            carveImg1.image = highCarvesImage1
            
            carveLine2.text = "\(highRankCarveLine2)"
            carveImg2.image = highCarvesImage2
            
            carveLine3.text = "\(highRankCarveLine3)"
            carveImg3.image = highCarvesImage3
            
            carveLine4.text = "\(highRankCarveLine4)"
            carveImg4.image = highCarvesImage4
            
            carveLine5.text = "\(highRankCarveLine5)"
            carveImg5.image = highCarvesImage5
            
            rewardLine1.text = "\(highRankRewardLine1)"
            rewardImage1.image = highRewardImage1
            
            rewardLine2.text = "\(highRankRewardLine2)"
            rewardImage2.image = highRewardImage2
            
            rewardLine3.text = "\(highRankRewardLine3)"
            rewardImage3.image = highRewardImage3
            
            rewardLine4.text = "\(highRankRewardLine4)"
            rewardImage4.image = highRewardImage4
            
            rewardLine5.text = "\(highRankRewardLine5)"
            rewardImage5.image = highRewardImage5
            
            rewardLine6.text = "\(highRankRewardLine6)"
            rewardImage6.image = highRewardImage6
            
            rewardLine7.text = "\(highRankRewardLine7)"
            rewardImage7.image = highRewardImage7
            
            rewardLine8.text = "\(highRankRewardLine8)"
            rewardImage8.image = highRewardImage8
        }
        if segmentControl.selectedSegmentIndex == 2 {
            titleLbl.text = "\(monsterCarves)"
            titleLbl2.text = "\(monsterRewards)"
            
            carveLine1.text = "\(masterRankCarveLine1)"
            carveImg1.image = masterCarvesImage1
            
            carveLine2.text = "\(masterRankCarveLine2)"
            carveImg2.image = masterCarvesImage2
            
            carveLine3.text = "\(masterRankCarveLine3)"
            carveImg3.image = masterCarvesImage3
            
            carveLine4.text = "\(masterRankCarveLine4)"
            carveImg4.image = masterCarvesImage4
            
            carveLine5.text = "\(masterRankCarveLine5)"
            carveImg5.image = masterCarvesImage5
            
            rewardLine1.text = "\(masterRankRewardLine1)"
            rewardImage1.image = masterRewardImage1
            
            rewardLine2.text = "\(masterRankRewardLine2)"
            rewardImage2.image = masterRewardImage2
            
            rewardLine3.text = "\(masterRankRewardLine3)"
            rewardImage3.image = masterRewardImage3
            
            rewardLine4.text = "\(masterRankRewardLine4)"
            rewardImage4.image = masterRewardImage4
            
            rewardLine5.text = "\(masterRankRewardLine5)"
            rewardImage5.image = masterRewardImage5
            
            rewardLine6.text = "\(masterRankRewardLine6)"
            rewardImage6.image = masterRewardImage6
            
            rewardLine7.text = "\(masterRankRewardLine7)"
            rewardImage7.image = masterRewardImage7
            
            rewardLine8.text = "\(masterRankRewardLine8)"
            rewardImage8.image = masterRewardImage8
        }
        if segmentControl.selectedSegmentIndex == 3 {
            titleLbl.text = "\(elements)"
            titleLbl2.text = "\(ailments)"
            
            elementLine1.text = "\(elementsLine1)"
            elementImg1.image = elementsImage1
            
            elementLine2.text = "\(elementsLine2)"
            elementImg2.image = elementsImage2
            
            elementLine3.text = "\(elementsLine3)"
            elementImg3.image = elementsImage3
            
            elementLine4.text = "\(elementsLine4)"
            elementImg4.image = elementsImage4
            
            elementLine5.text = "\(elementsLine5)"
            elementImg5.image = elementsImage5
            
            ailmentLine1.text = "\(ailmentsLine1)"
            ailmentImage1.image = ailmentsImage1
            
            ailmentLine2.text = "\(ailmentsLine2)"
            ailmentImage2.image = ailmentsImage2
            
            ailmentLine3.text = "\(ailmentsLine3)"
            ailmentImage3.image = ailmentsImage3
            
            ailmentLine4.text = "\(ailmentsLine4)"
            ailmentImage4.image = ailmentsImage4
            
            ailmentLine5.text = "\(ailmentsLine5)"
            ailmentImage5.image = ailmentsImage5
            
            emptyLine6.text = "\(emptyLine)"
            emptyImage6.image = emptyImage
            
            emptyLine7.text = "\(emptyLine)"
            emptyImage7.image = emptyImage
            
            emptyLine8.text = "\(emptyLine)"
            emptyImage8.image = emptyImage
        }
    }
}
