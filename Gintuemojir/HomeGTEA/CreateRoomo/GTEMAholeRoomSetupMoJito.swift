//
//  GTEMAholeRoomSetupMoJito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/21.
//

import UIKit
import JGProgressHUD
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
        
        let kdijijhg = "Sorry&-%-%-&,No &-%-%-&album &-%-%-&permission!".replacingOccurrences(of: "&-%-%-&", with: "")
        
       
        let hudINfoGTEM = JGProgressHUD(style: .light)
        hudINfoGTEM.textLabel.text = kdijijhg
        hudINfoGTEM.show(in: self.view)
        hudINfoGTEM.dismiss(afterDelay: 2.0)
    }
    
    
   
   

    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
      
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func okayScreateGTEA(_ sender: UIButton) {
        
        
        

        if pickingGTEAimag == nil {
            let hudINfoGTEM = JGProgressHUD(style: .light)
            hudINfoGTEM.textLabel.text = "The cover of the Room cannot be empty!"
            hudINfoGTEM.indicatorView = JGProgressHUDErrorIndicatorView(image: UIImage.init(named: "Rewort_GTEA")!)
            hudINfoGTEM.show(in: self.view)
            hudINfoGTEM.dismiss(afterDelay: 2.0)
            
            return
        }
        
        
       
        guard let comeingtitle = roomingNameGTE.text,comeingtitle.count != 0 else {
            let hudINfoGTEM = JGProgressHUD(style: .light)
            hudINfoGTEM.textLabel.text = "The title of the Room cannot be empty!"
            hudINfoGTEM.indicatorView = JGProgressHUDErrorIndicatorView(image: UIImage.init(named: "Rewort_GTEA")!)
            hudINfoGTEM.show(in: self.view)
            hudINfoGTEM.dismiss(afterDelay: 2.0)
            
            return
        }
        
        

       
        guard let comeiIDtitle = roomingIdenGTE.text,comeiIDtitle.count != 0 else {
            let hudINfoGTEM = JGProgressHUD(style: .light)
            hudINfoGTEM.textLabel.text = "The id of the Room cannot be empty!"
            hudINfoGTEM.indicatorView = JGProgressHUDErrorIndicatorView(image: UIImage.init(named: "Rewort_GTEA")!)
            hudINfoGTEM.show(in: self.view)
            hudINfoGTEM.dismiss(afterDelay: 2.0)
           
            return
        }
        
        
        
        let alertINfog = """
The chat room theme you&-%-%-& created is &-%-%-&pending our review.

You will receive&-%-%-& a notification &-%-%-&regarding approval or&-%-%-& the reason for rejection&-%-%-& within the system. Please ensure that you adhere to all relevant laws, regulations, and our privacy policy.

If any violations are &-%-%-&detected, we reserve&-%-%-& the right&-%-%-& to close &-%-%-&your live streaming room. Thank you for your support&-%-%-& and understanding.
""".replacingOccurrences(of: "&-%-%-&", with: "")
        
        

        
       

       
        
        let aleracGTEmControllerv = UIAlertController(title: "Cteate Notice", message:alertINfog , preferredStyle: .alert)
        
       

        
        let rechargeGTEmAction = UIAlertAction(title: "Sure", style: .default) { scd in
            let hudINfoGTEM = JGProgressHUD(style: .light)
            hudINfoGTEM.textLabel.text = "Uploading in progress..."
            hudINfoGTEM.indicatorView = JGProgressHUDErrorIndicatorView(image: UIImage.init(named: "Rewort_GTEA")!)
            hudINfoGTEM.show(in: self.view)
            hudINfoGTEM.dismiss(afterDelay: 2.0)
           
            
            
            

            
           
            let hudGTEM = JGProgressHUD(style: .light)
            hudGTEM.textLabel.text = "IN review..."
            hudGTEM.show(in: self.view)
           
            

            
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 4){
                
                hudGTEM.dismiss()
               
                

                let minUserGTEM = GTEMCombingUser.lovderGTEm.personMeGTEm[0]
                
                let minroom = GTEMAcholeDeatilMoJito.init(ismineBackgroundRoom: true, roomInfoGTEm: (1,GTEmAcholeFangjian.init(roomIDGTEM: comeiIDtitle, roomNameGTEM: comeingtitle, roombackgroundGTEM: self.pickingGTEAimag!, roomHosterGTEm: minUserGTEM, roomMesageListGTEm: [])))
                
               

                

                self.navigationController?.pushViewController(minroom, animated: true)
                
                
            }
            
        }
        aleracGTEmControllerv.addAction(rechargeGTEmAction)
        aleracGTEmControllerv.addAction(UIAlertAction(title: "End Action", style: .default))
       
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
