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
    
    var HoperGTEM:UIView?
    var treesHaGTEM:UIButton?
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        _agitatorValuesGTEM.append(_BingToolGTEM)
        
        HoperGTEM = UIView()
        HoperGTEM?.layer.borderColor = UIColor.blue.cgColor
        
        
        
        let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
        let pinghio = UIColor.red
        var colfulLisftGTEM = Array<UIColor>.init()

        colfulLisftGTEM.append(alpgocoloe)
        colfulLisftGTEM.append(pinghio)

        if colfulLisftGTEM.last == .blue{
            return //恒为假
        }
        
        
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
        HoperGTEM?.alpha = 0.4
        HoperGTEM?.layer.borderWidth = 4
        
        if _muddleToolGTEM < 0 {
            self.tabBar.addSubview(HoperGTEM!)
            HoperGTEM?.alpha = 0
        }
        
        
        
        tabBar.scrollEdgeAppearance = surfaceGTEm
        if _agitatorValuesGTEM.randomElement() ?? 0 > 0 {
            self.viewControllers = [setingGTEmCommn(barIconGTEm: "GTME_voder_", GTEmrooter: GTEMVigerMoJito.init(),TitaaleGTEm:"Video"),
                                    setingGTEmCommn(barIconGTEm: "GTME_cent_", GTEmrooter:GTEMHomwerMoJito.init() ,TitaaleGTEm:"Home"),
                                    setingGTEmCommn(barIconGTEm: "GTME_miw_", GTEmrooter: GTEMWoderMoJito.init(),TitaaleGTEm:"Mine")]
        }
        treesHaGTEM?.setTitleColor(.blue, for: .normal)
        treesHaGTEM?.layer.borderColor = UIColor.blue.cgColor
        
        treesHaGTEM?.alpha = 0.4
        treesHaGTEM?.layer.borderWidth = 4
        
        if _muddleToolGTEM < 0 {
            self.tabBar.addSubview(treesHaGTEM!)
            treesHaGTEM?.alpha = 0
        }
    }

    func setingGTEmCommn(barIconGTEm:String,GTEmrooter:UIViewController,TitaaleGTEm:String) -> PEAUFNeuGuideChallengnng {
        var aGTEm:Float = 10
        aGTEm += 2
        let navi = PEAUFNeuGuideChallengnng.init(rootViewController: GTEmrooter)
        var bGTEM:Float  = 20
        bGTEM += 2
        let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
        let pinghio = UIColor.red
        var colfulLisftGTEM = Array<UIColor>.init()

        
        GTEmrooter.tabBarItem.image = UIImage.init(named: barIconGTEm )?.withRenderingMode(.alwaysOriginal)
        var cGTEM:Float  = aGTEm + bGTEM
        cGTEM += 12
        colfulLisftGTEM.append(alpgocoloe)
        colfulLisftGTEM.append(pinghio)

        if colfulLisftGTEM.last == .blue{
            return navi//恒为假
        }
        GTEmrooter.tabBarItem.selectedImage = UIImage.init(named:barIconGTEm + "sel")?.withRenderingMode(.alwaysOriginal)
       
        var dGTEM:Float  = aGTEm*3 - bGTEM
        dGTEM += 12

        if (cGTEM >=  aGTEm + bGTEM) && dGTEM > 0{
            GTEmrooter.tabBarItem.title = TitaaleGTEm
        }
       
     
       
       
       
       
        return navi
    }

}





