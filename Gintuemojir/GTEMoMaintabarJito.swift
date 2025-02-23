//
//  GTEMoMaintabarJito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/17.
//

import UIKit

class GTEMoMaintabarJito: UITabBarController {

    
    
    func getDailyMixologyTipGenm() {
        self.tabBar.isTranslucent = false
        
        
        self.tabBar.backgroundColor = UIColor(red: 0.12, green: 0.01, blue: 0, alpha: 1)
        
    }

    func streamHDVideoGenm(from channel: String)->UITabBarAppearance {
        let surfaceGTEm = UITabBarAppearance()
        
     
        surfaceGTEm.stackedLayoutAppearance.normal.titleTextAttributes = [
            .foregroundColor:  UIColor(red: 0.66, green: 0.22, blue: 0.17, alpha: 1)
        ]
        
        surfaceGTEm.backgroundColor = UIColor(red: 0.12, green: 0.01, blue: 0, alpha: 1)
        
        return surfaceGTEm
    }
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        getDailyMixologyTipGenm()
        
        
        let surfaceGTEm = streamHDVideoGenm(from: "getDailyMixologyTipGenm")
        
        surfaceGTEm.stackedLayoutAppearance.selected.titleTextAttributes = [
            .foregroundColor:UIColor(red: 0.96, green: 0.75, blue: 0.01, alpha: 1)
        ]
        
        
      
        
        tabBar.standardAppearance = surfaceGTEm
        
       
        
        
        tabBar.scrollEdgeAppearance = surfaceGTEm
        
        sethuSIBaciv()
       
        
        self.selectedIndex = 1
    }

    
    func sethuSIBaciv() {

        var allChikl = Array<UIViewController>()
        
        let vireCOngtem = [("GTME_voder_",GTEMVigerMoJito.init(),"Video"),
                           ("GTME_cent_",GTEMHomwerMoJito.init(),"Home"),
                           
                           ("GTME_miw_",GTEMWoderMoJito.init(),"Mine")
        
        
        ] as [(String,UIViewController,String)]
        
        
        for item in vireCOngtem {
            let navi = PEAUFNeuGuideChallengnng.init(rootViewController: item.1)
            item.1.tabBarItem.title = item.2
            item.1.tabBarItem.image = UIImage.init(named: item.0 )?.withRenderingMode(.alwaysOriginal)
            item.1.tabBarItem.selectedImage = UIImage.init(named:item.0 + "sel")?.withRenderingMode(.alwaysOriginal)
            allChikl.append(navi)
        }
        
        self.viewControllers = allChikl
       
    }
    
    


}





