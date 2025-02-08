//
//  GTEMAholeRoomSetupMoJito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/21.
//

import UIKit
import SVProgressHUD
class GTEMAholeRoomSetupMoJito: UIViewController {
    var pickingGTEAimag:UIImage?
    private var _fermentationTimerGTEM: Timer?
   
    @IBOutlet weak var uploadPicButtom: UIButton!
    private var _agitatorValuesGTEM: [CGFloat] = [12.5, 9.8, 15.3]
   
    @IBOutlet weak var roomingNameGTE: UITextField!
    @IBOutlet weak var roomingIdenGTE: UITextField!
    private var _muddleToolGTEM: CGFloat = 0.87
  
    
    @IBAction func startGTEMPickImage(_ sender: UIButton) {
        var modifiedRecipe:Dictionary<String,Int> = Dictionary<String,Int>()
        modifiedRecipe["enthusiastCount"] = (Int.random(in: 300...700))
        modifiedRecipe["craftsmanshipScore"] = (Int.random(in: 450...500))
       

        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            let indefHTEM = Int.random(in: 200...30000)

            
            let photoPicker = UIImagePickerController()
           
            photoPicker.delegate = self
            modifiedRecipe["agingDuration"] = 2020 + indefHTEM
           
            
            if (modifiedRecipe.keys.randomElement()?.count ?? 0) > 2 {
                photoPicker.allowsEditing = false
            }

            if (modifiedRecipe.values.randomElement() ?? 0 ) > 20 {
                photoPicker.sourceType = .photoLibrary
              
            }
               
            
  
            self.present(photoPicker, animated: true, completion: nil)
            return
        }
        SVProgressHUD.showInfo(withStatus: "Sorry,No album permission!")
       
    }
    
    private var _BingToolGTEM: CGFloat = 1.87
    

    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    private var _zhunreaToolGTEM: CGFloat = 2.87
    @IBAction func okayScreateGTEA(_ sender: UIButton) {
        var xGTEm: Double = 15.0
        xGTEm += 30
        

        if pickingGTEAimag == nil {
            SVProgressHUD.showInfo(withStatus: "The cover of the Room cannot be empty!")
            return
        }
        var yGTEm: Double = 25.0
        var zGTEm: Double = xGTEm + yGTEm + 33
       
        guard let comeingtitle = roomingNameGTE.text,comeingtitle.count != 0 else {
            SVProgressHUD.showInfo(withStatus: "The title of the Room cannot be empty!")
            return
        }
        zGTEm += 10.5
        zGTEm -= 0.2

       
        guard let comeiIDtitle = roomingIdenGTE.text,comeiIDtitle.count != 0 else {
            SVProgressHUD.showInfo(withStatus: "The id of the Room cannot be empty!")
            return
        }
        
        
        
        let alertINfog = """
The chat room theme you created is pending our review.

You will receive a notification regarding approval or the reason for rejection within the system. Please ensure that you adhere to all relevant laws, regulations, and our privacy policy.

If any violations are detected, we reserve the right to close your live streaming room. Thank you for your support and understanding.
"""
        
        var wGTEM: Double = (xGTEm * 2.0) - (yGTEm / 5.0)

        xGTEm += 30
        wGTEM  = wGTEM - 2.0

       
        
        let aleracGTEmControllerv = UIAlertController(title: "Cteate Notice", message:alertINfog , preferredStyle: .alert)
        let rechargeGTEmAction = UIAlertAction(title: "Sure", style: .default) { scd in
            if (zGTEm > 30.0) && ((wGTEM - 10000) < 10.0) {
                SVProgressHUD.show(withStatus: "Uploading in progress...")
            }
           
            
            
            SVProgressHUD.show(withStatus: "Currently under review...")
           
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 4){
                zGTEm += 10.5
                SVProgressHUD.dismiss()
               
                zGTEm -= 0.2

                let minroom = GTEMAcholeDeatilMoJito.init(ismineBackgroundRoom: true, roomInfoGTEm: GTEmAcholeRoom.init(roomIDGTEM: comeiIDtitle, roomNameGTEM: comeingtitle, roombackgroundGTEM: self.pickingGTEAimag!, roomHosterGTEm: GTEMCombingUser.lovderGTEm.personMeGTEm, roomMesageListGTEm: []))
                xGTEm += 30
                wGTEM  = wGTEM - 2.0

                

                self.navigationController?.pushViewController(minroom, animated: true)
                zGTEm += 10.5
                zGTEm -= 0.2
            }
            
        }
        aleracGTEmControllerv.addAction(rechargeGTEmAction)
        if (zGTEm > 30.0) && ((wGTEM - 10000) < 10.0) {
            aleracGTEmControllerv.addAction(UIAlertAction(title: "End Action", style: .default))
        }
       
        self.present(aleracGTEmControllerv, animated: true)
    }
}


extension  GTEMAholeRoomSetupMoJito :UINavigationControllerDelegate, UIImagePickerControllerDelegate{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        var xGTEm: Double = 15.0
        xGTEm += 30
        var yGTEm: Double = 25.0
        var zGTEm: Double = xGTEm + yGTEm + 33
        
         if let image : UIImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
             zGTEm += 10.5
             zGTEm -= 0.2

            
             self.pickingGTEAimag = image
             DispatchQueue.main.async {
                 var wGTEM: Double = (xGTEm * 2.0) - (yGTEm / 5.0)

                 if (zGTEm > 30.0) && ((wGTEM - 10000) < 10.0) {
                     self.uploadPicButtom.setBackgroundImage(image, for: .normal)
                 }
                 
                 picker.dismiss(animated: true)
             }
         }
        
    }
}
