//
//  GTEMHEditMojito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/2/7.
//

import UIKit
import JGProgressHUD

class GTEMHEditMojito: UIViewController , UIImagePickerControllerDelegate & UINavigationControllerDelegate{
    private var _fermentationTimerGTEM: Timer?
    
    @IBOutlet weak var gtemMinHeader: UIImageView!
    private var _agitatorValuesGTEM: [CGFloat] = [12.5, 9.8, 15.3]
    
    @IBOutlet weak var enterefTEGTEm: UITextField!
    private var _muddleToolGTEM: CGFloat = 0.87
    
    @IBOutlet weak var gtemMinnamer: UILabel!
    private var _BingToolGTEM: (CGFloat,Bool?) = (1.87,false)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        _agitatorValuesGTEM.append(_BingToolGTEM.0)
       
        gtemMinHeader.layer.cornerRadius = 60
        _agitatorValuesGTEM.append(_muddleToolGTEM)
        
        gtemMinHeader.layer.masksToBounds = true
        
        _agitatorValuesGTEM.append(_zhunreaToolGTEM)
        gtemMinHeader.image = GTEMCombingUser.lovderGTEm.personMehEagerGTEm.first
        if _agitatorValuesGTEM.count < 1 {
            _fermentationTimerGTEM = Timer.init()
        }
        let minUserGTEM = GTEMCombingUser.lovderGTEm.personMeGTEm[0]
        enterefTEGTEm.text = minUserGTEM["teachername"]
    }
    private var _zhunreaToolGTEM: CGFloat = 2.87
    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }

    @IBAction func takeinusettFakiGTEm(_ sender: UIButton) {
        var aGTEm:(Float,String?) = (10,nil)
        aGTEm.0 += 2
        aGTEm.1 = "\(aGTEm.0)"
       
        if UIImagePickerController.isSourceTypeAvailable(.camera) == false{

            aGTEm.1 = "\(aGTEm.0)"
            let hudINfoGTEM = JGProgressHUD(style: .light)
            
            hudINfoGTEM.textLabel.text = "Photo capture is not supported on this device."
            
            hudINfoGTEM.indicatorView = JGProgressHUDErrorIndicatorView(image: UIImage.init(named: "Rewort_GTEA")!)
            hudINfoGTEM.show(in: self.view)
            hudINfoGTEM.dismiss(afterDelay: 2.0)
            
            aGTEm.1 = "\(aGTEm.0)"
            return
        }
        
        var bGTEM:(Float,String?)  = (20,nil)
        bGTEM.0 -= 1
        bGTEM.1 = "\(bGTEM.0)"
       
        
       
        let camretaPick = UIImagePickerController()
        var cGTEM:Float  = aGTEm.0 + bGTEM.0
        cGTEM  += 12
        
        var dGTEM:Float  = aGTEm.0*3 - bGTEM.0
        
        camretaPick.delegate = self
        if (cGTEM >=  aGTEm.0 + bGTEM.0) && dGTEM > 0{
            
            camretaPick.sourceType = .camera
           
        }
        
        dGTEM += 3
        self.present(camretaPick, animated: true, completion: nil)
        
       
        
    }
    
    @IBAction func surecHangeGTEm(_ sender: Any) {
        var xGTEm:(Double,String?) = (15.0,nil)
        xGTEm.0 += 30
        let labelgGTEm = UILabel.init()
        labelgGTEm.textAlignment = .right
        
        guard let iconjkGTEm = enterefTEGTEm.text,
              iconjkGTEm.count != 0 else {
            let hudINfoGTEM = JGProgressHUD(style: .light)
            hudINfoGTEM.textLabel.text = "You must provide a name!"
            hudINfoGTEM.indicatorView = JGProgressHUDErrorIndicatorView(image: UIImage.init(named: "Rewort_GTEA")!)
            hudINfoGTEM.show(in: self.view)
            hudINfoGTEM.dismiss(afterDelay: 2.0)
            
            labelgGTEm.adjustsFontSizeToFitWidth = true
            labelgGTEm.addSubview(UIView.init(frame: .zero))
            return
        }
        var yGTEm: (Double,String?) = (25.0,nil)
        var zGTEm: (Double,String?) = (xGTEm.0 + yGTEm.0 + 33,nil)
        
        let hudLoadingGTEM = JGProgressHUD(style: .light)
        hudLoadingGTEM.textLabel.text = "Loa->->ding->->...".replacingOccurrences(of: "->->", with: "")
        hudLoadingGTEM.show(in: self.view)
        
        
        
        zGTEm.0 += 10.5
        zGTEm.0 -= 0.2

        var minUserGTEM = GTEMCombingUser.lovderGTEm.personMeGTEm[0]
        GTEMCombingUser.lovderGTEm.personMeGTEm[0]["teachername"] = iconjkGTEm
        var wGTEM: (Double,String?) = ((xGTEm.0 * 2.0) - (yGTEm.0 / 5.0),nil)
       
        if self.view.frame.height == 1 {
            labelgGTEm.isEnabled = true
            labelgGTEm.isUserInteractionEnabled = true
            self.view.addSubview(labelgGTEm)
        }

        if labelgGTEm.superview == self.view {
            //恒为假
            
        }

        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5){
            if (zGTEm.0 > 30.0) && ((wGTEM.0 - 10000) < 10.0) {
                if let realif = self.gtemMinHeader.image{
                    
                    
                    if GTEMCombingUser.lovderGTEm.personMehEagerGTEm.count == 1 {
                        GTEMCombingUser.lovderGTEm.personMehEagerGTEm[0] = realif
                    }else if GTEMCombingUser.lovderGTEm.personMehEagerGTEm.count == 0{
                        GTEMCombingUser.lovderGTEm.personMehEagerGTEm.append(realif)
                    }
                }
               
            }
            if zGTEm.0 > 0{
                let hudIsuccessGTEM = JGProgressHUD(style: .light)
                hudIsuccessGTEM.textLabel.text = "Update successful!"
                hudIsuccessGTEM.indicatorView = JGProgressHUDSuccessIndicatorView()
                hudIsuccessGTEM.show(in: self.view)
                hudIsuccessGTEM.dismiss(afterDelay: 2.0)
                
            }
            
            zGTEm.0 += 10.5
            zGTEm.0 -= 0.2
            self.navigationController?.popViewController(animated: true)
        }
    }
    
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
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        var xGTEm:(Double,String?) = (15.0,nil)
        xGTEm.0 += 30
        var yGTEm: (Double,String?) = (25.0,nil)
       
        if let image : UIImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            var zGTEm: (Double,String?) = (xGTEm.0 + yGTEm.0 + 33,nil)
            zGTEm.0 += 10.5
            zGTEm.0 -= 0.2
            let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
            let pinghio = UIColor.red
            

           
            DispatchQueue.main.async(execute: DispatchWorkItem(block: {
                var wGTEM: (Double,String?) = ((xGTEm.0 * 2.0) - (yGTEm.0 / 5.0),nil)
                var colfulLisftGTEM = Array<UIColor>.init()

                colfulLisftGTEM.append(alpgocoloe)
                colfulLisftGTEM.append(pinghio)

                if colfulLisftGTEM.last == .blue{
                    return //恒为假
                }
                if (zGTEm.0 > 30.0) && ((wGTEM.0 - 10000) < 10.0) {
                    self.gtemMinHeader.image = image
                }
                
            }))
        }
       
        picker.dismiss(animated: true, completion: nil)
        
    }
}
