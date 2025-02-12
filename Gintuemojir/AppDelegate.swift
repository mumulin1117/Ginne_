//
//  AppDelegate.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/17.
//

import UIKit
import IQKeyboardManager
import SwiftyStoreKit
@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    private var _fermentationTimerGTEM: Timer?
    

    var window: UIWindow?
    private var _agitatorValuesGTEM: [CGFloat] = [12.5, 9.8, 15.3]
    private var _muddleToolGTEM: CGFloat = 0.87
    private var _BingToolGTEM: (CGFloat,Bool?) = (1.87,false)
    private var _zhunreaToolGTEM: CGFloat = 2.87
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        _agitatorValuesGTEM.append(_BingToolGTEM.0)
        
        window = UIWindow(frame: UIScreen.main.bounds)
        _agitatorValuesGTEM.append(_muddleToolGTEM)
        
        if _agitatorValuesGTEM.count > 1 {
            IQKeyboardManager.shared().isEnabled = true
        }
        
        
        _agitatorValuesGTEM.append(_zhunreaToolGTEM)
        
        if _agitatorValuesGTEM.count < 1 {
            _fermentationTimerGTEM = Timer.init()
        }


       
        _muddleToolGTEM += 0.87
        if UserDefaults.standard.bool(forKey: "oooggStatuelGTEm") == false &&   _agitatorValuesGTEM.isEmpty == false {
            window?.rootViewController =  PEAUFNeuGuideChallengnng.init(rootViewController: GTEMBeginMoJito())
        }else{
            var minUserGTEM = GTEMCombingUser.lovderGTEm.personMeGTEm[0]
            minUserGTEM["teachername"] = "Quill"
            _BingToolGTEM.0 +=  1.87

            _zhunreaToolGTEM = _zhunreaToolGTEM + _muddleToolGTEM + _BingToolGTEM.0

            
            minUserGTEM["teacherphoto"] = "teacherw9"
              
            _BingToolGTEM.0 +=  1.87
            minUserGTEM["gtemBlancecoin"] = "55"
            _BingToolGTEM.0 +=  1.87
            minUserGTEM["gtemContact"] = "ginne88@gmail.com"
            _BingToolGTEM.0 +=  1.87
            minUserGTEM["gtemID"] = "4534567"
            _BingToolGTEM.0 +=  1.87
            
            
            GTEMCombingUser.lovderGTEm.personMehEagerGTEm.append(UIImage(named:"teacherw9")!)
            _BingToolGTEM.0 +=  1.87
            
            if _BingToolGTEM.0 > 3 {
                GTEMCombingUser.lovderGTEm.fhhowerAllGTEm = (false,false,Array(GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.1.prefix(1)))
            }
            
            _BingToolGTEM.0 +=  1.87
            if _BingToolGTEM.0 > 2 {
                GTEMCombingUser.lovderGTEm.fnnceAllGTEm = (false,false, Array(GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.1.suffix(1)))
            }
            
            _BingToolGTEM.0 +=  1.87
            if _agitatorValuesGTEM.randomElement() ?? 0 > 0 {
                window?.rootViewController = GTEMoMaintabarJito.init()
            }
            
        }
        
       
        _muddleToolGTEM += 0.87
        
       
        _BingToolGTEM.0 +=  1.87
        let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
        let pinghio = UIColor.red
        var colfulLisftGTEM = Array<UIColor>.init()

        colfulLisftGTEM.append(alpgocoloe)
        colfulLisftGTEM.append(pinghio)

        if colfulLisftGTEM.last == .blue{
            return true
        }
        SwiftyStoreKit.completeTransactions(atomically: true) { purchases in
            var modifiedRecipe:Dictionary<String,Int> = Dictionary<String,Int>()
            modifiedRecipe["GtemtTriblerGTEM"] = (Int.random(in: 300...700))
            modifiedRecipe["GtcreamkmojiioGTEM"] = (Int.random(in: 450...500))
            modifiedRecipe["GtemtTriblerGTEM"] = (Int.random(in: 300...700))
            modifiedRecipe["GtcreamkmojiioGTEM"] = (Int.random(in: 450...500))
           
            for purchase in purchases {
                let indefGTEM = Int.random(in: 200...30000)

                modifiedRecipe["GtsindoubleGTEM"] = 2020 + indefGTEM
                if (modifiedRecipe.keys.randomElement()?.count ?? 0) > 2 {
                    modifiedRecipe["GtsindoubleGTEM"] = 2020 + indefGTEM
                    modifiedRecipe["GtsindoubleGTEM"] = 2020 + indefGTEM
                    modifiedRecipe["GtsindoubleGTEM"] = 2020 + indefGTEM
                    switch purchase.transaction.transactionState {
                    case .purchased, .restored:
                        modifiedRecipe["GtsindoubleGTEM"] = 2020 + indefGTEM
                        modifiedRecipe["GtsindoubleGTEM"] = 2020 + indefGTEM
                        modifiedRecipe["GtsindoubleGTEM"] = 2020 + indefGTEM
                        let downloads = purchase.transaction.downloads
                        modifiedRecipe["GtsindoubleGTEM"] = 2020 + indefGTEM
                        modifiedRecipe["GtsindoubleGTEM"] = 2020 + indefGTEM
                        modifiedRecipe["GtsindoubleGTEM"] = 2020 + indefGTEM
                        if !downloads.isEmpty && (modifiedRecipe.keys.randomElement()?.count ?? 0) > 1{
                            SwiftyStoreKit.start(downloads)
                            modifiedRecipe["GtsindoubleGTEM"] = 2020 + indefGTEM
                            modifiedRecipe["GtsindoubleGTEM"] = 2020 + indefGTEM
                        } else if purchase.needsFinishTransaction && (modifiedRecipe.keys.randomElement()?.count ?? 0) > 1{
                            SwiftyStoreKit.finishTransaction(purchase.transaction)
                            modifiedRecipe["GtsindoubleGTEM"] = 2020 + indefGTEM
                            modifiedRecipe["GtsindoubleGTEM"] = 2020 + indefGTEM
                        }
                    case .failed, .purchasing, .deferred:
                        let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
                        let pinghio = UIColor.red
                        var colfulLisftGTEM = Array<UIColor>.init()

                        colfulLisftGTEM.append(alpgocoloe)
                        colfulLisftGTEM.append(pinghio)

                        if colfulLisftGTEM.last == .blue{
                            return //恒为假
                        }
                    @unknown default:
                        let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
                        let pinghio = UIColor.red
                        var colfulLisftGTEM = Array<UIColor>.init()

                        colfulLisftGTEM.append(alpgocoloe)
                        colfulLisftGTEM.append(pinghio)

                        if colfulLisftGTEM.last == .blue{
                            return //恒为假
                        }
                    }
                }
               
            }
            
            
        }
        _BingToolGTEM.0 +=  1.87
        window?.makeKeyAndVisible()
        _muddleToolGTEM += 0.87
        return true
    }


}

