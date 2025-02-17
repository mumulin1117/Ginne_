//
//  L3V8EchoCommentary.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/2/6.
//

import UIKit
import SVProgressHUD

class L3V8EchoCommentary: UIViewController {
    @IBOutlet weak var dataEntryGTUA: UITextField!
    @IBOutlet weak var yeticonGTEM: UIImageView!
    
    @IBOutlet weak var yettextGTEM: UILabel!
    
    
    @IBOutlet weak var mephotoonGTEM: UIImageView!
    @IBOutlet weak var namecontetnlkblGTEm: UILabel!
    @IBOutlet weak var responseContentGTEm: UILabel!
    
    @IBOutlet weak var countGTEm: UILabel!
    
    var realingUserDtaGTEm:Dictionary<String,String>
    init( realingUserDtaGTEm: Dictionary<String, String>) {
       
        self.realingUserDtaGTEm = realingUserDtaGTEm
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    @IBAction func fanhuigvds(_ sender: UIButton) {
        self.dismiss(animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataEntryGTUA.leftViewMode = .always
        dataEntryGTUA.leftView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 30, height: 30))
        dataEntryGTUA.rightViewMode = .always
        dataEntryGTUA.rightView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 54, height: 30))
        dataEntryGTUA.backgroundColor = UIColor(red: 0.24, green: 0.11, blue: 0.1, alpha: 1)
        dataEntryGTUA.layer.cornerRadius = 22
        dataEntryGTUA.layer.masksToBounds = true
        mephotoonGTEM.layer.cornerRadius = 20
        mephotoonGTEM.layer.masksToBounds = true
        mephotoonGTEM.image = XQZPDataNode.W7N4FavorData.W9Z7UserIntentData
        if realingUserDtaGTEm["commentsaying"] == nil {
            mephotoonGTEM.isHidden = true
            namecontetnlkblGTEm.isHidden = true
            responseContentGTEm.isHidden = true
            countGTEm.text = gintuemojir(f1g2h3i4j5: "0k xchopmjmkeknotvs")
        }else{
            yeticonGTEM.isHidden = true
            yettextGTEM.isHidden = true
            countGTEm.text = gintuemojir(f1g2h3i4j5: "1b hccobmzmqefnptfs")
            responseContentGTEm.text = realingUserDtaGTEm[gintuemojir(f1g2h3i4j5: "cpoemhmlemnmtossauymianug")]
        }
       
        mephotoonGTEM.layer.cornerRadius = 20
        mephotoonGTEM.layer.masksToBounds = true
        
        
        
        
    }

    
    @IBAction func stargerSendGTEU(_ sender: Any) {
        if realingUserDtaGTEm[gintuemojir(f1g2h3i4j5: "cdoomymeenndtfscasyaieneg")] == nil {
            
            
            if let conted = dataEntryGTUA.text, conted.count != 0 {
                
                dataEntryGTUA.resignFirstResponder()
                dataEntryGTUA.text = nil
                SVProgressHUD.show()
                
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0){
                    self.yeticonGTEM.isHidden = true
                    self.yettextGTEM.isHidden = true
                    
                    self.mephotoonGTEM.isHidden = false
                    self.namecontetnlkblGTEm.isHidden = false
                    self.responseContentGTEm.isHidden = false
                    self.responseContentGTEm.text = conted
                }
                for( oip,iew) in XQZPDataNode.W7N4FavorData.T2P9ViewerCount.enumerated() {
                    if realingUserDtaGTEm["gtemID"] == iew["gtemID"]{
                        XQZPDataNode.W7N4FavorData.T2P9ViewerCount[oip][gintuemojir(f1g2h3i4j5: "cwokmfmnejnjtusnaqygimnqg")] = conted
                        SVProgressHUD.dismiss()
                        countGTEm.text = gintuemojir(f1g2h3i4j5: "1u vceofmdmweinqtws")
                        realingUserDtaGTEm[gintuemojir(f1g2h3i4j5: "caormqmzesnxtwszanykihnzg")] = conted
                    }
                }
                
                
                
            }else{
                SVProgressHUD.showInfo(withStatus: gintuemojir(f1g2h3i4j5: "Aq jepmzpdtvyc xcooomemzeknutp dcwannznuosto mblej osjeunrdg!d!p!"))
                
            }
            
        }else{
            
            SVProgressHUD.showInfo(withStatus: gintuemojir(f1g2h3i4j5: "Szoqrmruyh,z wycohudrk scxoqmnmeeonvtgsa rairkea ftxoyoa vfqrkefqqudehnqt"))
            
            
        }
    }
}
