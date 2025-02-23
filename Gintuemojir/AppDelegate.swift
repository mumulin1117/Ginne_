//
//  AppDelegate.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/17.
//

import UIKit
import IQKeyboardManager

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    
    

    var window: UIWindow?
    
    
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        if UserDefaults.standard.bool(forKey: "oooggStatuelGTEm") == false {
            window?.rootViewController =  PEAUFNeuGuideChallengnng.init(rootViewController: GTEMBeginMoJito())
        }else{
            var minUserGTEM = Dictionary<String,String>()//GTEMCombingUser.lovderGTEm.personMeGTEm[0]
            minUserGTEM["teachername"] = "Quill"
            

            
            var GtEmgetft =  updateLiveSessionGenm(session: true, traninputDic: minUserGTEM)
            
           
            GtEmgetft["gtemID"] = "4534567"
            
            if GTEMCombingUser.lovderGTEm.personMeGTEm.count == 0 {
                GTEMCombingUser.lovderGTEm.personMeGTEm.append(GtEmgetft)
            }else{
                GTEMCombingUser.lovderGTEm.personMeGTEm[0] = GtEmgetft
            }
           
            
            GTEMCombingUser.lovderGTEm.personMehEagerGTEm.append(UIImage(named:"teacherw9")!)
            
            
            window?.rootViewController = GTEMoMaintabarJito.init()
            
        }
        
       
        
        finalizeMixingSessionGenm()
        
      
       
        
        
        
        return true
    }
   
    
    func finalizeMixingSessionGenm() {
        
        window?.makeKeyAndVisible()
        
        if window != nil {
            GTEMCombingUser.lovderGTEm.enedCompleterPauie()
           
        }
        
       
       
    }
    
    func updateLiveSessionGenm(session: Bool,traninputDic:Dictionary<String,String>)->Dictionary<String,String>{
        
        var changeGTER = traninputDic
        
        
        if session {
            IQKeyboardManager.shared().isEnabled = true
           
        }
        
        changeGTER["teacherphoto"] = "teacherw9"
          
        
        changeGTER["gtemBlancecoin"] = "55"
        
        changeGTER["gtemContact"] = "ginne88@gmail.com"
        
        
        return changeGTER
        }
}

