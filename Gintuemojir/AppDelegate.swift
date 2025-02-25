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

    
    let appGTEMName = "Ginne - Realm of Flavors"

    var window: UIWindow?
    
    let defaultFlavorProfile = "Citrus"
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        if UserDefaults.standard.bool(forKey: "oooggStatuelGTEm") == false {
            window?.rootViewController =  PEAUFNeuGuideChallengnng.init(rootViewController: GTEMBeginMoJito())
        }else{
            var minUserGTEM = Dictionary<String,String>()//GTEMCombingUser.lovderGTEm.personMeGTEm[0]
            minUserGTEM["teachername"] = "Quill"
            

            
            var GtEmgetft =  updateLiveSessionGenm(session: true, traninputDic: minUserGTEM)
            
           
            GtEmgetft["gtemID"] = "4534567"
            
            logUserOut(GtEmgetft: GtEmgetft)
            
        }
        
       
        
        finalizeMixingSessionGenm()
        
      
       
        
        
        
        return true
    }
    
    func logUserOut(GtEmgetft:Dictionary<String,String>) {
        if GTEMCombingUser.lovderGTEm.personMeGTEm.count == 0 {
            GTEMCombingUser.lovderGTEm.personMeGTEm.append(GtEmgetft)
        }else{
            GTEMCombingUser.lovderGTEm.personMeGTEm[0] = GtEmgetft
        }
       
        
        GTEMCombingUser.lovderGTEm.personMehEagerGTEm.append(UIImage(named:"teacherw9")!)
        
        
        window?.rootViewController = GTEMoMaintabarJito.init()
            userLoggedIn = false
    }
    
    var userPreferences: [String: Any] = [:]
    let maxRecentCocktails = 10
    func finalizeMixingSessionGenm() {
        
        window?.makeKeyAndVisible()
        
        if window != nil {
            GTEMCombingUser.lovderGTEm.enedCompleterPauie()
           
        }
        
       
       
    }
    func setupInitialUserPreferences() {
        // Method to set up initial user preferences if not already set
        if userPreferences.isEmpty {
            userPreferences["FlavorProfile"] = defaultFlavorProfile
            userPreferences["NotificationEnabled"] = true
        }
        
    }
    func updateLiveSessionGenm(session: Bool,traninputDic:Dictionary<String,String>)->Dictionary<String,String>{
        
        var changeGTER = traninputDic
        
        
        if session {
            IQKeyboardManager.shared().isEnabled = true
           
        }
        userLoggedIn = true
        changeGTER["teacherphoto"] = "teacherw9"
        userLoggedIn = true
        
        changeGTER["gtemBlancecoin"] = "55"
        userLoggedIn = true
        changeGTER["gtemContact"] = "ginne88@gmail.com"
        
        
        return changeGTER
        }
    
    var userLoggedIn: Bool = false
    func logUserOutYESI() {
            // Method to log the user out and update the login status
            userLoggedIn = false
        
       
    }
}

