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
    private var _fermentationTimerGTEM: Timer?
   
    @IBOutlet weak var uploadPicButtom: UIButton!
    private var _agitatorValuesGTEM: [CGFloat] = [12.5, 9.8, 15.3]
    var HoperGTEM:UIView?
    
    @IBOutlet weak var roomingNameGTE: UITextField!
    @IBOutlet weak var roomingIdenGTE: UITextField!
    private var _muddleToolGTEM: CGFloat = 0.87
    var treesHaGTEM:UIButton?
    
    @IBAction func startGTEMPickImage(_ sender: UIButton) {
        var modifiedRecipe:Dictionary<String,Int> = Dictionary<String,Int>()
        modifiedRecipe["GtemtTriblerGTEM"] = (Int.random(in: 300...700))
        modifiedRecipe["GtcreamkmojiioGTEM"] = (Int.random(in: 450...500))
       
        HoperGTEM = UIView()
        HoperGTEM?.layer.borderColor = UIColor.blue.cgColor
        let labelgGTEm = UILabel.init()
        labelgGTEm.textAlignment = .right
        labelgGTEm.adjustsFontSizeToFitWidth = true
       

        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            let indefHTEM = Int.random(in: 200...30000)

            HoperGTEM?.alpha = 0.4
            HoperGTEM?.layer.borderWidth = 4

            if _muddleToolGTEM < 0 {
                self.view.addSubview(HoperGTEM!)
                HoperGTEM?.alpha = 0
            }


            treesHaGTEM?.setTitleColor(.blue, for: .normal)
            treesHaGTEM?.layer.borderColor = UIColor.blue.cgColor

            treesHaGTEM?.alpha = 0.4
            treesHaGTEM?.layer.borderWidth = 4

            if _muddleToolGTEM < 0 {
                self.view.addSubview(treesHaGTEM!)
                treesHaGTEM?.alpha = 0
            }
            let photoPicker = UIImagePickerController()
            labelgGTEm.addSubview(UIView.init(frame: .zero))
            if self.view.frame.height == 1 {
                labelgGTEm.isEnabled = true
                labelgGTEm.isUserInteractionEnabled = true
                self.view.addSubview(labelgGTEm)
            }

            if labelgGTEm.superview == self.view {
                //恒为假
                return
            }
            photoPicker.delegate = self
            modifiedRecipe["GtsindoubleGTEM"] = 2020 + indefHTEM
           
            
            if (modifiedRecipe.keys.randomElement()?.count ?? 0) > 2 {
                photoPicker.allowsEditing = false
            }

            if (modifiedRecipe.values.randomElement() ?? 0 ) > 20 {
                photoPicker.sourceType = .photoLibrary
              
            }
               
            
  
            self.present(photoPicker, animated: true, completion: nil)
            return
        }
        
        let kdijijhg = "Sorry->->,No ->->album ->->permission!".replacingOccurrences(of: "->->", with: "")
        
       
        let hudINfoGTEM = JGProgressHUD(style: .light)
        hudINfoGTEM.textLabel.text = kdijijhg
        hudINfoGTEM.show(in: self.view)
        hudINfoGTEM.dismiss(afterDelay: 2.0)
    }
    
    private var _BingToolGTEM: (CGFloat,Bool?) = (1.87,false)
    private func gtemGteDeleterTotal() {
    
        let QuikingGTEM = UIPageControl.init()
        QuikingGTEM.numberOfPages = 3
        let afvie = UIView.init()
        afvie.addSubview(QuikingGTEM)
        if UIScreen.main.bounds.height == 0 {
            afvie.center.x = 2
            self.view.addSubview(afvie)
        }
        
    }
    private func gtemGteDeleterAll() {
    
        let QuikingGTEM = UIPageControl.init()
        QuikingGTEM.numberOfPages = 3
        let afvie = UIView.init()
        afvie.addSubview(QuikingGTEM)
        if UIScreen.main.bounds.height == 0 {
            afvie.center.x = 1
            self.view.addSubview(afvie)
        }
        
    }

    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
        let pinghio = UIColor.red
        var colfulLisftGTEM = Array<UIColor>.init()

        colfulLisftGTEM.append(alpgocoloe)
        colfulLisftGTEM.append(pinghio)

        if colfulLisftGTEM.last == .blue{
            return //恒为假
        }

        self.navigationController?.popViewController(animated: true)
    }
    private var _zhunreaToolGTEM: CGFloat = 2.87
    @IBAction func okayScreateGTEA(_ sender: UIButton) {
        var xGTEm:(Double,String?) = (15.0,nil)
        xGTEm.0 += 30
        

        if pickingGTEAimag == nil {
            let hudINfoGTEM = JGProgressHUD(style: .light)
            hudINfoGTEM.textLabel.text = "The cover of the Room cannot be empty!"
            hudINfoGTEM.indicatorView = JGProgressHUDErrorIndicatorView(image: UIImage.init(named: "Rewort_GTEA")!)
            hudINfoGTEM.show(in: self.view)
            hudINfoGTEM.dismiss(afterDelay: 2.0)
            
            return
        }
        var yGTEm: (Double,String?) = (25.0,nil)
        var zGTEm: (Double,String?) = (xGTEm.0 + yGTEm.0 + 33,nil)
       
        guard let comeingtitle = roomingNameGTE.text,comeingtitle.count != 0 else {
            let hudINfoGTEM = JGProgressHUD(style: .light)
            hudINfoGTEM.textLabel.text = "The title of the Room cannot be empty!"
            hudINfoGTEM.indicatorView = JGProgressHUDErrorIndicatorView(image: UIImage.init(named: "Rewort_GTEA")!)
            hudINfoGTEM.show(in: self.view)
            hudINfoGTEM.dismiss(afterDelay: 2.0)
            
            return
        }
        zGTEm.0 += 10.5
        zGTEm.0 -= 0.2

       
        guard let comeiIDtitle = roomingIdenGTE.text,comeiIDtitle.count != 0 else {
            let hudINfoGTEM = JGProgressHUD(style: .light)
            hudINfoGTEM.textLabel.text = "The id of the Room cannot be empty!"
            hudINfoGTEM.indicatorView = JGProgressHUDErrorIndicatorView(image: UIImage.init(named: "Rewort_GTEA")!)
            hudINfoGTEM.show(in: self.view)
            hudINfoGTEM.dismiss(afterDelay: 2.0)
           
            return
        }
        
        
        
        let alertINfog = """
The chat room theme you->-> created is ->->pending our review.

You will receive->-> a notification ->->regarding approval or->-> the reason for rejection->-> within the system. Please ensure that you adhere to all relevant laws, regulations, and our privacy policy.

If any violations are ->->detected, we reserve->-> the right->-> to close ->->your live streaming room. Thank you for your support->-> and understanding.
""".replacingOccurrences(of: "->->", with: "")
        
        var wGTEM: (Double,String?) = ((xGTEm.0 * 2.0) - (yGTEm.0 / 5.0),nil)

        xGTEm.0 += 30
        wGTEM.0  = wGTEM.0 - 2.0

       
        
        let aleracGTEmControllerv = UIAlertController(title: "Cteate Notice", message:alertINfog , preferredStyle: .alert)
        xGTEm.0 += 30
        wGTEM.0  = wGTEM.0 - 2.0

        
        let rechargeGTEmAction = UIAlertAction(title: "Sure", style: .default) { scd in
            if (zGTEm.0 > 30.0) && ((wGTEM.0 - 10000) < 10.0) {
                let hudINfoGTEM = JGProgressHUD(style: .light)
                hudINfoGTEM.textLabel.text = "Uploading in progress..."
                hudINfoGTEM.indicatorView = JGProgressHUDErrorIndicatorView(image: UIImage.init(named: "Rewort_GTEA")!)
                hudINfoGTEM.show(in: self.view)
                hudINfoGTEM.dismiss(afterDelay: 2.0)
               
            }
           
            let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
            let pinghio = UIColor.red
            var colfulLisftGTEM = Array<UIColor>.init()

            colfulLisftGTEM.append(alpgocoloe)
           
            let hudGTEM = JGProgressHUD(style: .light)
            hudGTEM.textLabel.text = "IN review..."
            hudGTEM.show(in: self.view)
           
            colfulLisftGTEM.append(pinghio)

            if colfulLisftGTEM.last == .blue{
                return //恒为假
            }
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 4){
                zGTEm.0 += 10.5
                hudGTEM.dismiss()
               
                zGTEm.0 -= 0.2

                let minUserGTEM = GTEMCombingUser.lovderGTEm.personMeGTEm[0]
                
                let minroom = GTEMAcholeDeatilMoJito.init(ismineBackgroundRoom: true, roomInfoGTEm: (1,GTEmAcholeRoom.init(roomIDGTEM: comeiIDtitle, roomNameGTEM: comeingtitle, roombackgroundGTEM: self.pickingGTEAimag!, roomHosterGTEm: minUserGTEM, roomMesageListGTEm: [])))
                xGTEm.0 += 30
                wGTEM.0  = wGTEM.0 - 2.0

                

                self.navigationController?.pushViewController(minroom, animated: true)
                zGTEm.0 += 10.5
                zGTEm.0 -= 0.2
            }
            
        }
        aleracGTEmControllerv.addAction(rechargeGTEmAction)
        if (zGTEm.0 > 30.0) && ((wGTEM.0 - 10000) < 10.0) {
            aleracGTEmControllerv.addAction(UIAlertAction(title: "End Action", style: .default))
        }
       
        self.present(aleracGTEmControllerv, animated: true)
    }
}


extension  GTEMAholeRoomSetupMoJito :UINavigationControllerDelegate, UIImagePickerControllerDelegate{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        var xGTEm:(Double,String?) = (15.0,nil)
        xGTEm.0 += 30
        var yGTEm: (Double,String?) = (25.0,nil)
        var zGTEm: (Double,String?) = (xGTEm.0 + yGTEm.0 + 33,nil)
        
         if let image : UIImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
             zGTEm.0 += 10.5
             zGTEm.0 -= 0.2

            
             self.pickingGTEAimag = image
             DispatchQueue.main.async {
                 var wGTEM: (Double,String?) = ((xGTEm.0 * 2.0) - (yGTEm.0 / 5.0),nil)

                 if (zGTEm.0 > 30.0) && ((wGTEM.0 - 10000) < 10.0) {
                     self.uploadPicButtom.setBackgroundImage(image, for: .normal)
                 }
                 
                 picker.dismiss(animated: true)
             }
         }
        
    }
}
