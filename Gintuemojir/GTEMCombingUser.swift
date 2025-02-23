//
//  GTEMCombingUser.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/2/5.
//

import UIKit


class PEAUFBascivChallengnng: UIViewController {
}

class GTEMCombingUser: NSObject {
    
    
    static let lovderGTEm = GTEMCombingUser.init()
    
    
     
      var videoTotaluserGTEm:(Bool,Array<Dictionary<String,String>>,Bool) = (false,Array<Dictionary<String,String>>(),true)
    
 

     var personMeGTEm:Array<Dictionary<String,String>> = Array<Dictionary<String,String>>()
    

    
     var personMehEagerGTEm:Array<UIImage> = Array<UIImage>()
    
    
     var ancholeRoomGTEm:(String,[GTEmAcholeRoom]) = ("GTEMCombingUser",[GTEmAcholeRoom]())
    
   
    
     var fhhowerAllGTEm = (true,true,[[String: String]]())
    
     var fnnceAllGTEm = (true,true,[[String: String]]())

    
    override init() {
        super.init()
       
        if personMeGTEm.count == 0{
            personMeGTEm.append([:])
        }
      

        guard let pathGTEM = Bundle.main.path(forResource: "GTEHVieedeol", ofType: "plist"),
        let dataGTEM = FileManager.default.contents(atPath: pathGTEM)  else {
           
            videoTotaluserGTEm = (false,Array<Dictionary<String,String>>(),true)
            return
        }
      
        
    
        if let dictArrayGTEM = try? PropertyListSerialization.propertyList(from: dataGTEM, options: [], format: nil) as? [[String: String]]  {
            var newdatrGTEm = [[String: String]]()
            
            
            
           
            for (i,itmt) in dictArrayGTEM.enumerated() {
                newdatrGTEm.append(itmt)
               
                newdatrGTEm[i]["follosercount"] = "\(Int.random(in: 0...3))"
                
                newdatrGTEm[i]["facsercount"] = "\(Int.random(in: 0...3))"
               
               
            }
            videoTotaluserGTEm = (false,newdatrGTEm,true)
        }
        

        
        let begRoomIGTEm = [("Mixology Musings","begroomGTEM0","001"),
                           ("Cocktail Chatterbox","begroomGTEM1","002"),
                           ("Bar Banter","begroomGTEM2","003"),
                           ("Shaker Social","begroomGTEM3","004"),
                           ("Sip Secrets","begroomGTEM4","005"),
                           ("Libation Lounge","begroomGTEM5","006"),
        
        
        ]
        
        for (k,item) in begRoomIGTEm.enumerated() {
            
          
          
            
            guard  let sleUseringoGTEm = videoTotaluserGTEm.1.filter({ dijui in
                return dijui["gtemID"] != self.videoTotaluserGTEm.1[k]["gtemID"]
            }).shuffled().suffix(1).first else{
                
                
                         
               
                return
                
            }
            
            
            let welcomeRoomlog = "Talk about:\(item.0 )"
            
            
            
            let allLioGTEM = (false, [
                "Hello! What’s everyone drinking today?",
                "I’m new here—any recommendations for a beginner?",
                "Can’t wait to learn more about different wine varieties!",
                "What’s the most memorable wine you’ve ever tasted?",
                "I love discussing pairings—what do you all like with red wine?",
                "Looking forward to sharing and discovering new favorites!"
                
])
            
            let gtemSendingContents = allLioGTEM.1[k]
            
            
            let duhua0GTEm = ("notme",self.videoTotaluserGTEm.1[k],welcomeRoomlog)
            

            
            let duhu10GTEm = ("notme",sleUseringoGTEm,gtemSendingContents)
            

            var arrarDiolog = [duhua0GTEm,duhu10GTEm] as [(logMeGTEM:String,enterProuserGTEM:Dictionary<String,String>,gtemSendingContent:String)]
            
            let reamROomAncholeGTEm =   (GTEmAcholeRoom.init(roomIDGTEM: item.2, roomNameGTEM: item.0,roombackgroundGTEM: UIImage(named:item.1),roomHosterGTEm: self.videoTotaluserGTEm.1[k], roomMesageListGTEm: arrarDiolog))
           
            
            ancholeRoomGTEm.1.append(reamROomAncholeGTEm)
           
        }
        

        
    }
   
    

    class func validateGTEMEmail(_ eGTEMmail: String) -> Bool {
        
        
        
        let regexGTEM = "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$"
       
       
        
        
        
        
        let getmkkk = NSPredicate(format: "SELF MATCHES %@", regexGTEM)
        
        return getmkkk.evaluate(with: eGTEMmail)
      
    }

      
    class func validateEmiallogGTEmPassword(_ passwordGTEm: String) -> Bool {
        
        
        
        
        
        return passwordGTEm.count >= 6 && passwordGTEm.count <= 12
    }
    
   
}

class PEAUFNeuGuideChallengnng: UINavigationController {
    
   
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        self.navigationBar.isHidden = true
    }
    

    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
        
        
        
        
        
        if children.count > 0  && !viewController.isMember(of:PEAUFBascivChallengnng.self) {
            viewController.hidesBottomBarWhenPushed = true
           
         
        }
        
       
        super.pushViewController(viewController, animated: false)
    }
}


