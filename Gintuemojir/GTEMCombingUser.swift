//
//  GTEMCombingUser.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/2/5.
//

import UIKit
class GTEmAcholeRoom {
    var roomNameGTEM:String
    var roomIDGTEM:String
    var roombackgroundGTEM:UIImage?
    
    var hosteruserGTEm:[String: String]
    var roomMesageListGTEm:Array<(logMeGTEM:Bool,enterProuserGTEM:Dictionary<String,String>,gtemSendingContent:String)>
    

    init(roomIDGTEM:String,roomNameGTEM:String,roombackgroundGTEM:UIImage?,roomHosterGTEm: [String : String], roomMesageListGTEm: Array<(logMeGTEM:Bool,enterProuserGTEM:Dictionary<String,String>,gtemSendingContent:String)>) {
        self.hosteruserGTEm = roomHosterGTEm
        self.roomMesageListGTEm = roomMesageListGTEm
        self.roomNameGTEM = roomNameGTEM
        self.roombackgroundGTEM =  roombackgroundGTEM
        self.roomIDGTEM = roomIDGTEM
    }
}


class GTEMCombingUser: NSObject {
   
    static let lovderGTEm = GTEMCombingUser.init()
    
     var videoTotaluserGTEm:Array<Dictionary<String,String>> = Array<Dictionary<String,String>>()


    var personMeGTEm:Dictionary<String,String> = Dictionary<String,String>()
    
    
    var personMehEagerGTEm:UIImage?
    
    
    var ancholeRoomGTEm:[GTEmAcholeRoom] = [GTEmAcholeRoom]()
    
    
    
    var fhhowerAllGTEm = [[String: String]]()
    
    var fnnceAllGTEm = [[String: String]]()

    
    override init() {
        super.init()
        
        guard let pathGTEM = Bundle.main.path(forResource: "GTEHVieedeol", ofType: "plist"),
        let dataGTEM = FileManager.default.contents(atPath: pathGTEM) else {
            videoTotaluserGTEm = Array<Dictionary<String,String>>()
            return
        }
        if let dictArrayGTEM = try? PropertyListSerialization.propertyList(from: dataGTEM, options: [], format: nil) as? [[String: String]]  {
            var newdatrGTEm = [[String: String]]()
            for (i,itmt) in dictArrayGTEM.enumerated() {
                newdatrGTEm.append(itmt)
                newdatrGTEm[i]["follosercount"] = "\(Int.random(in: 0...3))"
                newdatrGTEm[i]["facsercount"] = "\(Int.random(in: 0...3))"
            }
            videoTotaluserGTEm = newdatrGTEm
        }
        

        
        let begRoomIGTEm = [("Mixology Musings","begroomGTEM0","001"),
                           ("Cocktail Chatterbox","begroomGTEM1","002"),
                           ("Bar Banter","begroomGTEM2","003"),
                           ("Shaker Social","begroomGTEM3","004"),
                           ("Sip Secrets","begroomGTEM4","005"),
                           ("Libation Lounge","begroomGTEM5","006"),
        
        
        ]
        for (k,item) in begRoomIGTEm.enumerated() {
           
           
            
            guard  let sleUseringoGTEm = videoTotaluserGTEm.filter({ dijui in
                return dijui["gtemID"] != self.videoTotaluserGTEm[k]["gtemID"]
            }).shuffled().suffix(1).first else{return}
            let welcomeRoomlog = "Talk about:\(item.0 )"
            let gtemSendingContents = [
                            "Hello! What’s everyone drinking today?",
                            "I’m new here—any recommendations for a beginner?",
                            "Can’t wait to learn more about different wine varieties!",
                            "What’s the most memorable wine you’ve ever tasted?",
                            "I love discussing pairings—what do you all like with red wine?",
                            "Looking forward to sharing and discovering new favorites!"
                            
            ][k]
            
            let duhua0GTEm = (false,self.videoTotaluserGTEm[k],welcomeRoomlog)
            let duhu10GTEm = (false,sleUseringoGTEm,gtemSendingContents)

            var arrarDiolog = [duhua0GTEm,duhu10GTEm] as [(logMeGTEM:Bool,enterProuserGTEM:Dictionary<String,String>,gtemSendingContent:String)]
            
            let reamROomAncholeGTEm =   GTEmAcholeRoom.init(roomIDGTEM: item.2, roomNameGTEM: item.0,roombackgroundGTEM: UIImage(named:item.1),roomHosterGTEm: self.videoTotaluserGTEm[k], roomMesageListGTEm: arrarDiolog)
           
            
            ancholeRoomGTEm.append(reamROomAncholeGTEm)
        }
        

        
    }
   
    

   
    
   
}
