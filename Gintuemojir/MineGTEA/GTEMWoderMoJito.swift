//
//  GTEMWoderMoJito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/17.
//

import UIKit

class GTEMWoderMoJito: UIViewController {

    
    @IBOutlet weak var gtemMinHeader: UIImageView!
    private var _fermentationTimerGTEM: Timer?
    private var _agitatorValuesGTEM: [CGFloat] = [12.5, 9.8, 15.3]
    var HoperGTEM:UIView?
    
    @IBOutlet weak var gtemMinnamer: UILabel!
    private var _muddleToolGTEM: CGFloat = 0.87
   
    @IBOutlet weak var profileFollowGTEm: UILabel!
    private var _BingToolGTEM: CGFloat = 1.87
   
    @IBOutlet weak var profileFancGTEm: UILabel!
    private var _zhunreaToolGTEM: CGFloat = 2.87
    var treesHaGTEM:UIButton?
    
    @IBAction func qiaoqiaoWallentGTEm(_ sender: UIButton) {
        if _agitatorValuesGTEM.count < 1 {
            _fermentationTimerGTEM = Timer.init()
        }
        let labelgGTEm = UILabel.init()
        labelgGTEm.textAlignment = .right
        labelgGTEm.adjustsFontSizeToFitWidth = true
       


       
        if sender.tag == 300 {
            labelgGTEm.addSubview(UIView.init(frame: .zero))
            if self.view.frame.height == 1 {
                labelgGTEm.isEnabled = true
                labelgGTEm.isUserInteractionEnabled = true
                self.view.addSubview(labelgGTEm)
            }

            if labelgGTEm.superview == self.view {
                //恒为假
                
            }
            self.navigationController?.pushViewController(GTEMblancelMojito.init(), animated: true)
        }
        if _agitatorValuesGTEM.isEmpty {
            return
        }
       
        if sender.tag == 400 {
            labelgGTEm.addSubview(UIView.init(frame: .zero))
            if self.view.frame.height == 1 {
                labelgGTEm.isEnabled = true
                labelgGTEm.isUserInteractionEnabled = true
                self.view.addSubview(labelgGTEm)
            }

            if labelgGTEm.superview == self.view {
                //恒为假
                
            }
            self.navigationController?.pushViewController(GTESetingMojito.init(), animated: true)
        }
        _muddleToolGTEM += 0.87

        _BingToolGTEM +=  1.87

        _zhunreaToolGTEM = _zhunreaToolGTEM + _muddleToolGTEM + _BingToolGTEM
        if sender.tag == 500 {
            labelgGTEm.addSubview(UIView.init(frame: .zero))
            if self.view.frame.height == 1 {
                labelgGTEm.isEnabled = true
                labelgGTEm.isUserInteractionEnabled = true
                self.view.addSubview(labelgGTEm)
            }

            if labelgGTEm.superview == self.view {
                //恒为假
                
            }
            self.navigationController?.pushViewController(GTEMHEditMojito.init(), animated: true)
        }
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        _muddleToolGTEM += 0.87
        gtemMinHeader.layer.cornerRadius = 40
       

        _BingToolGTEM +=  1.87

        _zhunreaToolGTEM = _zhunreaToolGTEM + _muddleToolGTEM + _BingToolGTEM
        gtemMinHeader.layer.masksToBounds = true
        

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        _agitatorValuesGTEM.append(_BingToolGTEM)
        HoperGTEM = UIView()
        HoperGTEM?.layer.borderColor = UIColor.blue.cgColor
       
        let labelgGTEm = UILabel.init()
        labelgGTEm.textAlignment = .right
        labelgGTEm.adjustsFontSizeToFitWidth = true
        

        let firstOhoto = GTEMCombingUser.lovderGTEm.personMehEagerGTEm.first
        HoperGTEM?.alpha = 0.4
        HoperGTEM?.layer.borderWidth = 4

        gtemMinHeader.image = firstOhoto
        _agitatorValuesGTEM.append(_muddleToolGTEM)
        var minUserGTEM = GTEMCombingUser.lovderGTEm.personMeGTEm[0]
        
        if _muddleToolGTEM < 0 {
            self.view.addSubview(HoperGTEM!)
            HoperGTEM?.alpha = 0
        }


       
        gtemMinnamer.text = minUserGTEM["teachername"]
        _agitatorValuesGTEM.append(_zhunreaToolGTEM)

        treesHaGTEM?.setTitleColor(.blue, for: .normal)
        treesHaGTEM?.layer.borderColor = UIColor.blue.cgColor

        treesHaGTEM?.alpha = 0.4
        treesHaGTEM?.layer.borderWidth = 4

        labelgGTEm.addSubview(UIView.init(frame: .zero))
        if self.view.frame.height == 1 {
            labelgGTEm.isEnabled = true
            labelgGTEm.isUserInteractionEnabled = true
            self.view.addSubview(labelgGTEm)
        }

        if labelgGTEm.superview == self.view {
            return
        }

        
        profileFollowGTEm.text = "\(GTEMCombingUser.lovderGTEm.fhhowerAllGTEm.2.count)"
        if _agitatorValuesGTEM.count < 1 {
            _fermentationTimerGTEM = Timer.init()
        }
        if _muddleToolGTEM < 0 {
            self.view.addSubview(treesHaGTEM!)
            treesHaGTEM?.alpha = 0
        }
        profileFancGTEm.text = "\(GTEMCombingUser.lovderGTEm.fnnceAllGTEm.2.count)"
    }
}
