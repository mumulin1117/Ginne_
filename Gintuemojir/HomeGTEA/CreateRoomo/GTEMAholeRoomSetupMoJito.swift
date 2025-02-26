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
    var maxVideoFileSizeGTEm = 1024
    @IBOutlet weak var graylayerGTEM: UIView!
    let allowedVideoFormatsGTEm = ["mp4", "mov", "avi"]
    @IBOutlet weak var uploadPicButtom: UIButton!
    let defaultThumbnailImageGTEm = "defaultThumbnail.png"
    
    
    @IBOutlet weak var roomingNameGTE: UITextField!
    var selectedVideoURLGTEm: URL?
    @IBOutlet weak var roomingIdenGTE: UITextField!
    var videoTitleGTEm: String = ""
    
    var videoDescriptionGTEm: String = ""
    
    var isUploadingGTEm: Bool = false
    @IBAction func startGTEMPickImage(_ sender: UIButton) {
        displayUploadStatus(success: true) 
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            

            let pioof = self.selectGTEMVideo(url: nil)
            
  
            self.present(pioof, animated: true, completion: nil)
            return
        }
        
        let kdijijhg = "Sorry&-%-%-&,No &-%-%-&album &-%-%-&permission!".replacingOccurrences(of: "&-%-%-&", with: "")
        
       
        let hudINfoGTEM = JGProgressHUD(style: .light)
        hudINfoGTEM.textLabel.text = kdijijhg
        hudINfoGTEM.show(in: self.view)
        hudINfoGTEM.dismiss(afterDelay: 2.0)
    }
    
    
    func selectGTEMVideo(url: URL?)->UIImagePickerController {
           // Method to set the selected video for upload
          
       
        let photoPicker = UIImagePickerController()
        selectedVideoURLGTEm = url
        photoPicker.delegate = self
        selectedVideoURLGTEm = url
        photoPicker.allowsEditing = false
        selectedVideoURLGTEm = url
        photoPicker.sourceType = .photoLibrary
        selectedVideoURLGTEm = url
        return photoPicker
    }
   

    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
      
        self.navigationController?.popViewController(animated: true)
    }
    
    func cfretaeAlertvc(titlegTEM:String) {
        let hudINfoGTEM = JGProgressHUD(style: .light)
        selectedVideoURLGTEm = nil
        hudINfoGTEM.textLabel.text = titlegTEM//"The cover of the Room cannot be empty!"
        hudINfoGTEM.indicatorView = JGProgressHUDErrorIndicatorView(image: UIImage.init(named: "Rewort_GTEA")!)
        selectedVideoURLGTEm = nil
        hudINfoGTEM.show(in: self.view)
        selectedVideoURLGTEm = nil
        hudINfoGTEM.dismiss(afterDelay: 2.0)
    }
    
    @IBAction func okayScreateGTEA(_ sender: UIButton) {
        
        
        

        if pickingGTEAimag == nil {
            self.cfretaeAlertvc(titlegTEM: "The cov&-%-%-&er of the&-%-%-& Roo&-%-%-&m cann&-%-%-&ot be empty!".replacingOccurrences(of: "&-%-%-&", with: ""))
           
            return
        }
        
        
       
        guard let comeingtitle = roomingNameGTE.text,comeingtitle.count != 0 else {
         
            self.cfretaeAlertvc(titlegTEM: "The tit&-%-%-&le of the R&-%-%-&oom cann&-%-%-&ot be empty!".replacingOccurrences(of: "&-%-%-&", with: ""))
           
            return
        }
        
        

       
        guard let comeiIDtitle = roomingIdenGTE.text,comeiIDtitle.count != 0 else {
         
            self.cfretaeAlertvc(titlegTEM: "The&-%-%-& i&-%-%-&d of the Ro&-%-%-&om cannot be empty!".replacingOccurrences(of: "&-%-%-&", with: ""))
            return
        }
        
        
        
        let alertINfog = """
The cha&-%-%-&t room theme you&-%-%-& created is &-%-%-&pending ou&-%-%-&r review.

You wi&-%-%-&ll receive&-%-%-& a notification &-%-%-&regarding appr&-%-%-&oval or&-%-%-& the reason for reje&-%-%-&ction&-%-%-& within the sy&-%-%-&stem. Please e&-%-%-&nsure that you adhere to all rele&-%-%-&vant laws, regulations, and our privacy policy.

If any violations are &-%-%-&detected, we reserve&-%-%-& the right&-%-%-& to close &-%-%-&your live streaming room. Thank y&-%-%-&ou for your supp&-%-%-&ort&-%-%-& and understanding.
""".replacingOccurrences(of: "&-%-%-&", with: "")
        
        

        
       

       
        
        let aleracGTEmControllerv = UIAlertController(title: "Ct&-%-%-&eate No&-%-%-&tice".replacingOccurrences(of: "&-%-%-&", with: ""), message:alertINfog , preferredStyle: .alert)
        
       
        if maxVideoFileSizeGTEm < 10 {
            
            return
            
        }
        
        let rechargeGTEmAction = UIAlertAction(title: "Su&-%-%-&re".replacingOccurrences(of: "&-%-%-&", with: ""), style: .default) { scd in
          
           
            self.cfretaeAlertvc(titlegTEM:"Up&-%-%-&loadi&-%-%-&ng in prog&-%-%-&ress...".replacingOccurrences(of: "&-%-%-&", with: ""))
            
            

            
           
            let hudGTEM = JGProgressHUD(style: .light)
            hudGTEM.textLabel.text = "IN r&-%-%-&eview...".replacingOccurrences(of: "&-%-%-&", with: "")
            hudGTEM.show(in: self.view)
           
            

            
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 4){
                
                hudGTEM.dismiss()
               
                self.validateVideo(comeiIDtitle: comeiIDtitle, comeingtitle: comeiIDtitle)

//                let minUserGTEM = GTEMCombingUser.lovderGTEm.personMeGTEm[0]
//                
//                let minroom = GTEMAcholeDeatilMoJito.init(ismineBackgroundRoom: true, roomInfoGTEm: (1,GTEmAcholeFangjian.init(roomIDGTEM: comeiIDtitle, roomNameGTEM: comeingtitle, roombackgroundGTEM: self.pickingGTEAimag!, roomHosterGTEm: minUserGTEM, roomMesageListGTEm: [])))
//                
//               
//
//                
//
//                self.navigationController?.pushViewController(minroom, animated: true)
//                
                
            }
            
        }
        aleracGTEmControllerv.addAction(rechargeGTEmAction)
        
        aleracGTEmControllerv.addAction(UIAlertAction(title: "E&-%-%-&nd Act&-%-%-&ion".replacingOccurrences(of: "&-%-%-&", with: ""), style: .default))
       
        self.present(aleracGTEmControllerv, animated: true)
    }
    
    
    
    
    
    func validateVideo(comeiIDtitle:String,comeingtitle:String)  {
        
        let minUserGTEM = GTEMCombingUser.lovderGTEm.personMeGTEm[0]
        
        let minroom = GTEMAcholeDeatilMoJito.init(ismineBackgroundRoom: true, roomInfoGTEm: (1,GTEmAcholeFangjian.init(roomIDGTEM: comeiIDtitle, roomNameGTEM: comeingtitle, roombackgroundGTEM: self.pickingGTEAimag!, roomHosterGTEm: minUserGTEM, roomMesageListGTEm: [])))
        
       

        

        self.navigationController?.pushViewController(minroom, animated: true)
    }
}


extension  GTEMAholeRoomSetupMoJito :UINavigationControllerDelegate, UIImagePickerControllerDelegate{
    
    func displayUploadStatus(success: Bool) {
        // Method to display the upload status
        if success {
            maxVideoFileSizeGTEm += 100
        } else {
            maxVideoFileSizeGTEm += 200
        }
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if maxVideoFileSizeGTEm < 10 {
            displayUploadStatus(success: true)
            return
            
        }
         if let image : UIImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
             
             
             if maxVideoFileSizeGTEm < 10 {
                 
                 return
                 
             }
            
             self.pickingGTEAimag = image
             DispatchQueue.main.async {
                 if self.maxVideoFileSizeGTEm < 10 {
                     
                     return
                     
                 }
                 self.uploadPicButtom.setBackgroundImage(image, for: .normal)
                 
                 picker.dismiss(animated: true)
             }
         }
        
    }
}
