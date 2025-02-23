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
            var minUserGTEM = Dictionary<String,String>()//GTEMCombingUser.lovderGTEm.personMeGTEm[0]
            minUserGTEM["teachername"] = "Quill"
            

            

            
            minUserGTEM["teacherphoto"] = "teacherw9"
              
            
            minUserGTEM["gtemBlancecoin"] = "55"
            
            minUserGTEM["gtemContact"] = "ginne88@gmail.com"
            
            minUserGTEM["gtemID"] = "4534567"
            
            if GTEMCombingUser.lovderGTEm.personMeGTEm.count == 0 {
                GTEMCombingUser.lovderGTEm.personMeGTEm.append(minUserGTEM)
            }else{
                GTEMCombingUser.lovderGTEm.personMeGTEm[0] = minUserGTEM
            }
           
            
            GTEMCombingUser.lovderGTEm.personMehEagerGTEm.append(UIImage(named:"teacherw9")!)
            
            GTEMCombingUser.lovderGTEm.fhhowerAllGTEm = (false,false,Array(GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.1.prefix(1)))
            
            GTEMCombingUser.lovderGTEm.fnnceAllGTEm = (false,false, Array(GTEMCombingUser.lovderGTEm.videoTotaluserGTEm.1.suffix(1)))
            
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

