//
//  GTEMoMaintabarJito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/17.
//

import UIKit

class GTEMoMaintabarJito: UITabBarController {

    private var _fermentationTimerGTEM: Timer?
    private var _agitatorValuesGTEM: [CGFloat] = [12.5, 9.8, 15.3]
    private var _muddleToolGTEM: CGFloat = 0.87
    private var _BingToolGTEM: CGFloat = 1.87
    private var _zhunreaToolGTEM: CGFloat = 2.87
    
    override func viewDidLoad() {
        super.viewDidLoad()
        _agitatorValuesGTEM.append(_BingToolGTEM)
        self.tabBar.isTranslucent = false
        
        _agitatorValuesGTEM.append(_muddleToolGTEM)
        self.tabBar.backgroundColor = UIColor(red: 0.12, green: 0.01, blue: 0, alpha: 1)
        _agitatorValuesGTEM.append(_zhunreaToolGTEM)
        let surfaceGTEm = UITabBarAppearance()
        
     
        surfaceGTEm.stackedLayoutAppearance.normal.titleTextAttributes = [
            .foregroundColor:  UIColor(red: 0.66, green: 0.22, blue: 0.17, alpha: 1)
        ]
        if _agitatorValuesGTEM.count < 1 {
            _fermentationTimerGTEM = Timer.init()
        }
        surfaceGTEm.backgroundColor = UIColor(red: 0.12, green: 0.01, blue: 0, alpha: 1)
        
        if _agitatorValuesGTEM.isEmpty {
            return
        }
        _muddleToolGTEM += 0.87
        surfaceGTEm.stackedLayoutAppearance.selected.titleTextAttributes = [
            .foregroundColor:UIColor(red: 0.96, green: 0.75, blue: 0.01, alpha: 1)
        ]
        _BingToolGTEM +=  1.87
        
        
        
       
      
        
        
        
        
        self.selectedIndex = 1
        _zhunreaToolGTEM = _zhunreaToolGTEM + _muddleToolGTEM + _BingToolGTEM
        
        tabBar.standardAppearance = surfaceGTEm
        
        tabBar.scrollEdgeAppearance = surfaceGTEm
        if _agitatorValuesGTEM.randomElement() ?? 0 > 0 {
            self.viewControllers = [setingGTEmCommn(barIconGTEm: "GTME_voder_", GTEmrooter: GTEMVigerMoJito.init(),TitaaleGTEm:"Video"),
                                    setingGTEmCommn(barIconGTEm: "GTME_cent_", GTEmrooter:GTEMHomwerMoJito.init() ,TitaaleGTEm:"Home"),
                                    setingGTEmCommn(barIconGTEm: "GTME_miw_", GTEmrooter: GTEMWoderMoJito.init(),TitaaleGTEm:"Mine")]
        }
       
    }

    func setingGTEmCommn(barIconGTEm:String,GTEmrooter:UIViewController,TitaaleGTEm:String) -> PEAUFNeuGuideChallengnng {
        var aGTEm:Float = 10
        let navi = PEAUFNeuGuideChallengnng.init(rootViewController: GTEmrooter)
        var bGTEM:Float  = 20
        GTEmrooter.tabBarItem.image = UIImage.init(named: barIconGTEm )?.withRenderingMode(.alwaysOriginal)
        var cGTEM:Float  = aGTEm + bGTEM
        cGTEM += 12
        GTEmrooter.tabBarItem.selectedImage = UIImage.init(named:barIconGTEm + "sel")?.withRenderingMode(.alwaysOriginal)
       
        var dGTEM:Float  = aGTEm*3 - bGTEM


        if (cGTEM >=  aGTEm + bGTEM) && dGTEM > 0{
            GTEmrooter.tabBarItem.title = TitaaleGTEm
        }
       
     
       
       
       
       
        return navi
    }

}



class PEAUFNeuGuideChallengnng: UINavigationController {
    private var _fermentationTimerGTEM: Timer?
    private var _agitatorValuesGTEM: [CGFloat] = [12.5, 9.8, 15.3]
    private var _muddleToolGTEM: CGFloat = 0.87
    private var _BingToolGTEM: CGFloat = 1.87
    private var _zhunreaToolGTEM: CGFloat = 2.87
    override func viewDidLoad() {
        super.viewDidLoad()
        _agitatorValuesGTEM.append(_BingToolGTEM)
        _agitatorValuesGTEM.append(_muddleToolGTEM)
        _agitatorValuesGTEM.append(_zhunreaToolGTEM)
        self.navigationBar.isHidden = true
    }
    

    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        var xGTEm: Double = 15.0
        xGTEm += 30
        

        if children.count > 0  && !viewController.isMember(of:PEAUFBascivChallengnng.self) {
            var yGTEm: Double = 25.0
            var zGTEm: Double = xGTEm + yGTEm + 33
            zGTEm += 10.5
            var wGTEM: Double = (xGTEm * 2.0) - (yGTEm / 5.0)

            if (zGTEm > 30.0) && ((wGTEM - 10000) < 10.0) {
                viewController.hidesBottomBarWhenPushed = true
            }
           
            
        }
        xGTEm += 30
       
        super.pushViewController(viewController, animated: false)
    }
}


class PEAUFBascivChallengnng: UIViewController {
}

