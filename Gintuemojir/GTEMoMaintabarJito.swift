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
    private var _BingToolGTEM: (CGFloat,Bool?) = (1.87,false)
    private var _zhunreaToolGTEM: CGFloat = 2.87
    
    private var HoperGTEM:UIView?
    private var treesHaGTEM:UIButton?
    
    private func gtemGteDeleter() {
    
        let QuikingGTEM = UIPageControl.init()
        QuikingGTEM.numberOfPages = 3
        let afvie = UIView.init()
        afvie.addSubview(QuikingGTEM)
        if self.tabBar.frame.height == 0 {
            afvie.center = self.tabBar.center
            self.tabBar.addSubview(afvie)
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        _agitatorValuesGTEM.append(_BingToolGTEM.0)
        
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
        _BingToolGTEM.0 +=  1.87
        
        
        
       
      
        
        
        
        
        self.selectedIndex = 1
        _zhunreaToolGTEM = _zhunreaToolGTEM + _muddleToolGTEM + _BingToolGTEM.0
        
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

    private func setingGTEmCommn(barIconGTEm:String,GTEmrooter:UIViewController,TitaaleGTEm:String) -> PEAUFNeuGuideChallengnng {
        
        let navi = PEAUFNeuGuideChallengnng.init(rootViewController: GTEmrooter)
        
        let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
        let pinghio = UIColor.red
        var colfulLisftGTEM = Array<UIColor>.init()

        
        GTEmrooter.tabBarItem.image = UIImage.init(named: barIconGTEm )?.withRenderingMode(.alwaysOriginal)
       
        colfulLisftGTEM.append(alpgocoloe)
        colfulLisftGTEM.append(pinghio)

        if colfulLisftGTEM.last == .blue{
            return navi//恒为假
        }
        GTEmrooter.tabBarItem.selectedImage = UIImage.init(named:barIconGTEm + "sel")?.withRenderingMode(.alwaysOriginal)
       
        GTEmrooter.tabBarItem.title = TitaaleGTEm

       
        return navi
    }

}





