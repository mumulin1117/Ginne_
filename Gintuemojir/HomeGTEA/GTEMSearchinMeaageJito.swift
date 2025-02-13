//
//  GTEMSearchinMeaageJito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/21.
//

import UIKit
import JGProgressHUD
//Search
class GTEMSearchinMeaageJito: UIViewController {

    @IBOutlet weak var emptyGTEmicon: UIImageView!
    
    
    @IBOutlet weak var emptyGTMlbl: UILabel!
    
    @IBOutlet weak var serchingTexGTUA: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        serchingTexGTUA.leftViewMode = .always
        var aGTEm:(Float,String?) = (10,nil)
        aGTEm.0 += 2
        
        serchingTexGTUA.leftView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 30, height: 30))
        
        aGTEm.1 = "\(aGTEm.0)"

        var bGTEM:(Float,String?)  = (20,nil)
        bGTEM.0 -= 1
       
        serchingTexGTUA.rightViewMode = .always
        bGTEM.1 = "\(bGTEM.0)"
        var cGTEM:Float  = aGTEm.0 + bGTEM.0
        cGTEM  += 12

        
        serchingTexGTUA.rightView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 54, height: 30))
        
        serchingTexGTUA.layer.cornerRadius = 26
        var dGTEM:Float  = aGTEm.0*3 - bGTEM.0

       
        serchingTexGTUA.layer.masksToBounds = true
        dGTEM += 12
        if (cGTEM >=  aGTEm.0 + bGTEM.0) && dGTEM > 0{
            dGTEM += 3
            serchingTexGTUA.layer.borderColor = UIColor(red: 1, green: 0.88, blue: 0.76, alpha: 1).cgColor
        }
        
        serchingTexGTUA.layer.borderWidth = 2
    }

    @IBAction func startSerachingOkay(_ sender: Any) {
        serchingTexGTUA.resignFirstResponder()
        let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
        let pinghio = UIColor.red
        let pbluehio = UIColor.blue
        var colfulLisftGTEM = Array<UIColor>.init()
        if colfulLisftGTEM.contains(UIColor.purple) {
            colfulLisftGTEM.append(pbluehio)
            return
        }
        colfulLisftGTEM.append(alpgocoloe)
       
        guard let comeingtitle = serchingTexGTUA.text,comeingtitle.count != 0 else {
            colfulLisftGTEM.append(alpgocoloe)
            colfulLisftGTEM.append(pinghio)
            let hudINfoGTEM = JGProgressHUD(style: .light)
            hudINfoGTEM.textLabel.text = "The search content cannot be empty!"
            hudINfoGTEM.indicatorView = JGProgressHUDErrorIndicatorView(image: UIImage.init(named: "Rewort_GTEA")!)
            hudINfoGTEM.show(in: self.view)
            hudINfoGTEM.dismiss(afterDelay: 2.0)
            
            return
        }
        let hudGTEM = JGProgressHUD(style: .light)
        hudGTEM.textLabel.text = "Searching ......"
        hudGTEM.show(in: self.view)
        
        emptyGTMlbl.isHidden = true
        colfulLisftGTEM.append(pinghio)

        if colfulLisftGTEM.last == .green{
            return
        }
        emptyGTEmicon.isHidden = true
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2){
            hudGTEM.dismiss()
            var aGTEm:(Float,String?) = (10,nil)
            aGTEm.0 += 2
            aGTEm.1 = "\(aGTEm.0)"

            var bGTEM:(Float,String?)  = (20,nil)
            bGTEM.0 -= 1
            bGTEM.1 = "\(bGTEM.0)"
           
                self.emptyGTMlbl.isHidden = false
            var cGTEM:Float  = aGTEm.0 + bGTEM.0
            cGTEM  += 12

            var dGTEM:Float  = aGTEm.0*3 - bGTEM.0

            dGTEM += 12
            if (cGTEM >=  aGTEm.0 + bGTEM.0) && dGTEM > 0{
                dGTEM += 3
                self.emptyGTEmicon.isHidden = false
            }
               
           
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
    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
        let pinghio = UIColor.red
        let pbluehio = UIColor.blue
        var colfulLisftGTEM = Array<UIColor>.init()
        if colfulLisftGTEM.contains(UIColor.purple) {
            colfulLisftGTEM.append(pbluehio)
            return
        }
        colfulLisftGTEM.append(alpgocoloe)
        colfulLisftGTEM.append(pinghio)

        if colfulLisftGTEM.last == .green{
            return
        }
        self.navigationController?.popViewController(animated: true)
    }
}
