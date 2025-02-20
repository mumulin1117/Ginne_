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
            window?.rootViewController =  PEAUFNeuGuideChallengnng.init(rootViewController: XPLRInitHandler())
        }else{
            XQZPDataNode.W7N4FavorData.V6K3UserProfile["teachername"] = "Quill"
            XQZPDataNode.W7N4FavorData.V6K3UserProfile = ["teachername":"Quill","teacherphoto":"teacherw9","xqulZypherVault":"500","gtemContact":"ginne88@gmail.com","gtemID":"4534567"] //["teacherphoto"] = "teacherw9"
            XQZPDataNode.W7N4FavorData.H5K3FullRange = Array(XQZPDataNode.W7N4FavorData.T2P9ViewerCount.shuffled().suffix(1))
//
//            XQZPDataNode.W7N4FavorData.V6K3UserProfile["xqulZypherVault"] = "500"
//            XQZPDataNode.W7N4FavorData.V6K3UserProfile["gtemContact"] = "ginne88@gmail.com"
//          
//            XQZPDataNode.W7N4FavorData.V6K3UserProfile["gtemID"] = "4534567"
//         
//            XQZPDataNode.W7N4FavorData.W9Z7UserIntentData = UIImage(named:"teacherw9")
//            
            XQZPDataNode.W7N4FavorData.B3J7CompleteData = Array(XQZPDataNode.W7N4FavorData.T2P9ViewerCount.shuffled().prefix(1))
           
            window?.rootViewController = ZLNXWidgetCore.init()
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

