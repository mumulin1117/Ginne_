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



    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        IQKeyboardManager.shared().isEnabled = true
        
        if UserDefaults.standard.bool(forKey: "oooggStatuelGTEm") == false {
            window?.rootViewController =  PEAUFNeuGuideChallengnng.init(rootViewController: GTEMBeginMoJito())
        }else{
            GTEMCombingUser.lovderGTEm.personMeGTEm["teachername"] = "Quill"
            GTEMCombingUser.lovderGTEm.personMeGTEm["teacherphoto"] = "teacherw9"
              
            
            GTEMCombingUser.lovderGTEm.personMeGTEm["gtemBlancecoin"] = "500"
            GTEMCombingUser.lovderGTEm.personMeGTEm["gtemContact"] = "ginne88@gmail.com"
          
            GTEMCombingUser.lovderGTEm.personMeGTEm["gtemID"] = "4534567"
         
            GTEMCombingUser.lovderGTEm.personMehEagerGTEm = UIImage(named:"teacherw9")
            
            GTEMCombingUser.lovderGTEm.fhhowerAllGTEm = Array(GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.shuffled().prefix(1))
            GTEMCombingUser.lovderGTEm.fnnceAllGTEm = Array(GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.shuffled().prefix(1))
            window?.rootViewController = GTEMoMaintabarJito.init()
        }
        
        
        SwiftyStoreKit.completeTransactions(atomically: true) { purchases in
            for purchase in purchases {
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
        window?.makeKeyAndVisible()
        return true
    }


}

