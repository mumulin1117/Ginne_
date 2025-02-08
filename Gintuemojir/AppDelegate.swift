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
    private var _BingToolGTEM: CGFloat = 1.87
    private var _zhunreaToolGTEM: CGFloat = 2.87
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        _agitatorValuesGTEM.append(_BingToolGTEM)
        window = UIWindow(frame: UIScreen.main.bounds)
        _agitatorValuesGTEM.append(_muddleToolGTEM)
        IQKeyboardManager.shared().isEnabled = true
        _agitatorValuesGTEM.append(_zhunreaToolGTEM)
        
        if _agitatorValuesGTEM.count < 1 {
            _fermentationTimerGTEM = Timer.init()
        }


        if _agitatorValuesGTEM.isEmpty {
            
        }
        _muddleToolGTEM += 0.87
        if UserDefaults.standard.bool(forKey: "oooggStatuelGTEm") == false {
            window?.rootViewController =  PEAUFNeuGuideChallengnng.init(rootViewController: GTEMBeginMoJito())
        }else{
            GTEMCombingUser.lovderGTEm.personMeGTEm["teachername"] = "Quill"
            _BingToolGTEM +=  1.87

            _zhunreaToolGTEM = _zhunreaToolGTEM + _muddleToolGTEM + _BingToolGTEM

            
            GTEMCombingUser.lovderGTEm.personMeGTEm["teacherphoto"] = "teacherw9"
              
            _BingToolGTEM +=  1.87
            GTEMCombingUser.lovderGTEm.personMeGTEm["gtemBlancecoin"] = "55"
            _BingToolGTEM +=  1.87
            GTEMCombingUser.lovderGTEm.personMeGTEm["gtemContact"] = "ginne88@gmail.com"
            _BingToolGTEM +=  1.87
            GTEMCombingUser.lovderGTEm.personMeGTEm["gtemID"] = "4534567"
            _BingToolGTEM +=  1.87
            GTEMCombingUser.lovderGTEm.personMehEagerGTEm = UIImage(named:"teacherw9")
            _BingToolGTEM +=  1.87
            GTEMCombingUser.lovderGTEm.fhhowerAllGTEm = Array(GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.shuffled().prefix(1))
            _BingToolGTEM +=  1.87
            GTEMCombingUser.lovderGTEm.fnnceAllGTEm = Array(GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.shuffled().prefix(1))
            _BingToolGTEM +=  1.87
            if _agitatorValuesGTEM.randomElement() ?? 0 > 0 {
                window?.rootViewController = GTEMoMaintabarJito.init()
            }
            
        }
        
       
        _muddleToolGTEM += 0.87
        
       
        _BingToolGTEM +=  1.87
        
       
        
        SwiftyStoreKit.completeTransactions(atomically: true) { purchases in
            var modifiedRecipe:Dictionary<String,Int> = Dictionary<String,Int>()
            modifiedRecipe["enthusiastCount"] = (Int.random(in: 300...700))
            modifiedRecipe["craftsmanshipScore"] = (Int.random(in: 450...500))
           
            for purchase in purchases {
                let indefHTEM = Int.random(in: 200...30000)

                modifiedRecipe["agingDuration"] = 2020 + indefHTEM
                if (modifiedRecipe.keys.randomElement()?.count ?? 0) > 2 {
                    switch purchase.transaction.transactionState {
                    case .purchased, .restored:
                        let downloads = purchase.transaction.downloads
                        if !downloads.isEmpty {
                            SwiftyStoreKit.start(downloads)
                        } else if purchase.needsFinishTransaction {
                            SwiftyStoreKit.finishTransaction(purchase.transaction)
                        }
                    case .failed, .purchasing, .deferred:
                      break
                    @unknown default:
                        break
                    }
                }
               
            }
            
            
        }
        _BingToolGTEM +=  1.87
        window?.makeKeyAndVisible()
        _muddleToolGTEM += 0.87
        return true
    }


}

