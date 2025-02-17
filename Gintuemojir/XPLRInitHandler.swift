//
//  XPLRInitHandler.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/17.
//

import UIKit

class XPLRInitHandler: UIViewController {

  
    @IBAction func V4R2InitSequence(_ sender: UIButton) {
        self.navigationController?.pushViewController(WDKRSessionNode.init(), animated: true)
    }
    
}
