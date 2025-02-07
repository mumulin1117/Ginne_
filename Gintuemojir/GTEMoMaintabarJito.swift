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
      
        let appearancePEA = UITabBarAppearance()
        
     
        appearancePEA.stackedLayoutAppearance.normal.titleTextAttributes = [
            .foregroundColor:  UIColor(red: 0.66, green: 0.22, blue: 0.17, alpha: 1)
        ]
        
        appearancePEA.backgroundColor = UIColor(red: 0.12, green: 0.01, blue: 0, alpha: 1)
        appearancePEA.stackedLayoutAppearance.selected.titleTextAttributes = [
            .foregroundColor:UIColor(red: 0.96, green: 0.75, blue: 0.01, alpha: 1)
        ]
        self.selectedIndex = 1
        tabBar.standardAppearance = appearancePEA
        tabBar.scrollEdgeAppearance = appearancePEA
        self.viewControllers = [apppacrtYnoweintPEA(peaForIcon: "GTME_voder_", PERroot: GTEMVigerMoJito.init(),perTITLe:"Video"),
                                apppacrtYnoweintPEA(peaForIcon: "GTME_cent_", PERroot:GTEMHomwerMoJito.init() ,perTITLe:"Home"),
                                apppacrtYnoweintPEA(peaForIcon: "GTME_miw_", PERroot: GTEMWoderMoJito.init(),perTITLe:"Mine")]
    }

    func apppacrtYnoweintPEA(peaForIcon:String,PERroot:UIViewController,perTITLe:String) -> PEAUFNeuGuideChallengnng {
        let navi = PEAUFNeuGuideChallengnng.init(rootViewController: PERroot)
     
        PERroot.tabBarItem.image = UIImage.init(named: peaForIcon )?.withRenderingMode(.alwaysOriginal)
        PERroot.tabBarItem.selectedImage = UIImage.init(named:peaForIcon + "sel")?.withRenderingMode(.alwaysOriginal)
       
        PERroot.tabBarItem.title = perTITLe
       
        return navi
    }

}



class PEAUFNeuGuideChallengnng: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationBar.isHidden = true
    }
    

    override func pushViewController(_ viewController: UIViewController, animated: Bool) {

        if children.count > 0  && !viewController.isMember(of:PEAUFBascivChallengnng.self) {
            viewController.hidesBottomBarWhenPushed = true
            
        }
        super.pushViewController(viewController, animated: false)
    }
}


class PEAUFBascivChallengnng: UIViewController {
}

