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


class GTEmAcholeRoom {
    
 
    var roomNameGTEM:String
    
    var roomIDGTEM:String
    
    
   
    var roombackgroundGTEM:UIImage?
    
    var hosteruserGTEm:[String: String]
    
    
    var roomMesageListGTEm:Array<(logMeGTEM:String,enterProuserGTEM:Dictionary<String,String>,gtemSendingContent:String)>
   

    init(roomIDGTEM:String,roomNameGTEM:String,roombackgroundGTEM:UIImage?,roomHosterGTEm: [String : String], roomMesageListGTEm: Array<(logMeGTEM:String,enterProuserGTEM:Dictionary<String,String>,gtemSendingContent:String)>) {
        
        
        self.hosteruserGTEm = roomHosterGTEm
        
        
        self.roomMesageListGTEm = roomMesageListGTEm
        
        
        

        self.roomNameGTEM = roomNameGTEM
        
        
      
        self.roombackgroundGTEM =  roombackgroundGTEM
       
        self.roomIDGTEM = roomIDGTEM
    }
}
