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
    
    @IBOutlet weak var uploadPicButtom: UIButton!
    
    @IBOutlet weak var roomingNameGTE: UITextField!
    @IBOutlet weak var roomingIdenGTE: UITextField!
    

    
    @IBAction func startGTEMPickImage(_ sender: UIButton) {
        
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            let photoPicker = UIImagePickerController()
            photoPicker.delegate = self
            photoPicker.allowsEditing = false
           
               
            photoPicker.sourceType = .photoLibrary
          
  
            self.present(photoPicker, animated: true, completion: nil)
            return
        }
        SVProgressHUD.showInfo(withStatus: "Sorry,No album permission!")
       
    }
    

    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }

    @IBAction func okayScreateGTEA(_ sender: UIButton) {
        if pickingGTEAimag == nil {
            SVProgressHUD.showInfo(withStatus: "The cover of the Room cannot be empty!")
            return
        }
        guard let comeingtitle = roomingNameGTE.text,comeingtitle.count != 0 else {
            SVProgressHUD.showInfo(withStatus: "The title of the Room cannot be empty!")
            return
        }
        
        guard let comeiIDtitle = roomingIdenGTE.text,comeiIDtitle.count != 0 else {
            SVProgressHUD.showInfo(withStatus: "The id of the Room cannot be empty!")
            return
        }
        
        
        
        let alertINfog = """
The live streaming theme you have created requires our review.

We will send you an approval message or rejection reason in the system notification.Please comply with relevant laws and regulations as well as our privacy policy. 

Once any violations are found, we will close your live streaming room. Thank you for your support and understanding
"""
        
        
        
        let aleracGTEmControllerv = UIAlertController(title: "Create Room Notice", message:alertINfog , preferredStyle: .alert)
        let rechargeGTEmAction = UIAlertAction(title: "Create", style: .default) { scd in
            
            SVProgressHUD.show(withStatus: "uploading......")
            SVProgressHUD.show(withStatus: "Under review.....")
           
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 4){
                SVProgressHUD.dismiss()
                let minroom = GTEMAcholeDeatilMoJito.init(ismineBackgroundRoom: true, roomInfoGTEm: GTEmAcholeRoom.init(roomIDGTEM: comeiIDtitle, roomNameGTEM: comeingtitle, roombackgroundGTEM: self.pickingGTEAimag!, roomHosterGTEm: GTEMCombingUser.lovderGTEm.personMeGTEm, roomMesageListGTEm: []))
                
                self.navigationController?.pushViewController(minroom, animated: true)
            }
            
        }
        aleracGTEmControllerv.addAction(rechargeGTEmAction)
        aleracGTEmControllerv.addAction(UIAlertAction(title: "Cancel", style: .default))
        self.present(aleracGTEmControllerv, animated: true)
    }
}


extension  GTEMAholeRoomSetupMoJito :UINavigationControllerDelegate, UIImagePickerControllerDelegate{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {

         if let image : UIImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
             self.pickingGTEAimag = image
             DispatchQueue.main.async {
                 self.uploadPicButtom.setBackgroundImage(image, for: .normal)
                 picker.dismiss(animated: true)
             }
         }
        
    }
}
