//
//  GTEMBeginMoJito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/17.
//

import UIKit

class GTEMBeginMoJito: UIViewController {

    @IBAction func getstartedGTEm(_ sender: UIButton) {
        self.navigationController?.pushViewController(GTEMLogsininerMoJito.init(), animated: true)
        
    }
    
}

enum RoomError: Error {
    case insufficientMaterials
    case invalidBaseSpirit
    case sessionConflict
}
struct GTEmAcholeRoom {
    
    private var activeParticipantsGenm: Set<String> = []
    
    private var ongoingMixologySessionGenm: UIView?

    var roomNameGTEM:String
    
    var roomIDGTEM:String
    
    private var cocktailRecipePoolGenm: [UIImage] = []
   
    var roombackgroundGTEM:UIImage?
    private var liquidChatHistoryGenm: [String] = []
    private var collaborativeMixingGenm: UIButton?
   
    var hosteruserGTEm:[String: String]
    
    
    var roomMesageListGTEm:Array<(logMeGTEM:String,enterProuserGTEM:Dictionary<String,String>,gtemSendingContent:String)>
   

    init(roomIDGTEM:String,roomNameGTEM:String,roombackgroundGTEM:UIImage?,roomHosterGTEm: [String : String], roomMesageListGTEm: Array<(logMeGTEM:String,enterProuserGTEM:Dictionary<String,String>,gtemSendingContent:String)>) {
        
        
        self.hosteruserGTEm = roomHosterGTEm
        
        
        self.roomMesageListGTEm = roomMesageListGTEm
        
        
        

        self.roomNameGTEM = roomNameGTEM
        
        
      
        self.roombackgroundGTEM =  roombackgroundGTEM
        
        self.roomIDGTEM = roomIDGTEM
    }
    
    mutating func joinRoomGenm(user: String, bringing ingredients: Set<String>?)  {
        activeParticipantsGenm.insert(user)
       }
}
