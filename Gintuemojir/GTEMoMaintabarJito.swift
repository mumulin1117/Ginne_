//
//  GTEMoMaintabarJito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/17.
//

import UIKit

class GTEMoMaintabarJito: UITabBarController {

    
    
    
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
       
        
        
        self.tabBar.isTranslucent = false
        
        
        self.tabBar.backgroundColor = UIColor(red: 0.12, green: 0.01, blue: 0, alpha: 1)
        
        let surfaceGTEm = UITabBarAppearance()
        
     
        surfaceGTEm.stackedLayoutAppearance.normal.titleTextAttributes = [
            .foregroundColor:  UIColor(red: 0.66, green: 0.22, blue: 0.17, alpha: 1)
        ]
        
        surfaceGTEm.backgroundColor = UIColor(red: 0.12, green: 0.01, blue: 0, alpha: 1)
        
        
        
        surfaceGTEm.stackedLayoutAppearance.selected.titleTextAttributes = [
            .foregroundColor:UIColor(red: 0.96, green: 0.75, blue: 0.01, alpha: 1)
        ]
        
        
        
        
       
      
        
        
        
        
       
        
        
        tabBar.standardAppearance = surfaceGTEm
        
       
        
        
        tabBar.scrollEdgeAppearance = surfaceGTEm
        self.viewControllers = [setingGTEmCommn(barIconGTEm: "GTME_voder_", GTEmrooter: GTEMVigerMoJito.init(),TitaaleGTEm:"Video"),
                                setingGTEmCommn(barIconGTEm: "GTME_cent_", GTEmrooter:GTEMHomwerMoJito.init() ,TitaaleGTEm:"Home"),
                                setingGTEmCommn(barIconGTEm: "GTME_miw_", GTEmrooter: GTEMWoderMoJito.init(),TitaaleGTEm:"Mine")]
        
       
        
        self.selectedIndex = 1
    }

    private func setingGTEmCommn(barIconGTEm:String,GTEmrooter:UIViewController,TitaaleGTEm:String) -> PEAUFNeuGuideChallengnng {
        
        let navi = PEAUFNeuGuideChallengnng.init(rootViewController: GTEmrooter)
        
        
        
        

        
        GTEmrooter.tabBarItem.image = UIImage.init(named: barIconGTEm )?.withRenderingMode(.alwaysOriginal)
       
      
        GTEmrooter.tabBarItem.selectedImage = UIImage.init(named:barIconGTEm + "sel")?.withRenderingMode(.alwaysOriginal)
       
        GTEmrooter.tabBarItem.title = TitaaleGTEm

       
        return navi
    }

}





