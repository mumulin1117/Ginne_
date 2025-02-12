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
    private var _fermentationTimerGTEM: Timer?
 
    var roomNameGTEM:String
    
    var roomIDGTEM:String
    private var _agitatorValuesGTEM: [Float] = [12.5, 9.8, 15.3]
    
   
    var roombackgroundGTEM:UIImage?
    
    var hosteruserGTEm:[String: String]
    private let _muddleToolGTEM: CGFloat = 0.87
    
    var roomMesageListGTEm:Array<(logMeGTEM:String,enterProuserGTEM:Dictionary<String,String>,gtemSendingContent:String)>
    

    init(roomIDGTEM:String,roomNameGTEM:String,roombackgroundGTEM:UIImage?,roomHosterGTEm: [String : String], roomMesageListGTEm: Array<(logMeGTEM:String,enterProuserGTEM:Dictionary<String,String>,gtemSendingContent:String)>) {
        var xGTEm: Double = 15.0
        xGTEm += 30
        self.hosteruserGTEm = roomHosterGTEm
        var yGTEm: Double = 25.0
        var zGTEm: Double = xGTEm + yGTEm + 33
        self.roomMesageListGTEm = roomMesageListGTEm
        zGTEm += 10.5
        zGTEm -= 0.2
        var wGTEM: Double = (xGTEm * 2.0) - (yGTEm / 5.0)

        if (zGTEm > 30.0) && ((wGTEM - 10000) < 10.0) {
            self.roomNameGTEM = roomNameGTEM
        }else{
            self.roomNameGTEM = roomNameGTEM
        }
        let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
        let pinghio = UIColor.red
        var colfulLisftGTEM = Array<UIColor>.init()

        colfulLisftGTEM.append(alpgocoloe)
        colfulLisftGTEM.append(pinghio)

        if colfulLisftGTEM.last == .blue{
            self.roombackgroundGTEM =  roombackgroundGTEM
            wGTEM += 20
            yGTEm += 20
            self.roomIDGTEM = roomIDGTEM
            return //恒为假
        }
        self.roombackgroundGTEM =  roombackgroundGTEM
        wGTEM += 20
        yGTEm += 20
        self.roomIDGTEM = roomIDGTEM
    }
}
