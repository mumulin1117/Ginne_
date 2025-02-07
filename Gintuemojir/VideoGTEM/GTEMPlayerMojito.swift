//
//  GTEMPlayerMojito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/2/5.
//

import UIKit
import ZFPlayer
import SVProgressHUD
class GTEMPlayerMojito: UIViewController {
    var playerGTEM: ZFPlayerController?
    var playerViewGTEM: ZFPlayerView = ZFPlayerView()
  
    var linkUrlGTEM:String
    
    init(linkUrl: String) {
        self.linkUrlGTEM = linkUrl
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    deinit {
        self.playerGTEM?.currentPlayerManager.stop()
        self.playerGTEM = nil
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor =  UIColor(red: 0.66, green: 0.22, blue: 0.17, alpha: 1)
       
        playerViewGTEM = ZFPlayerView()
              
        playerViewGTEM.frame = self.view.bounds
               
        self.view.addSubview(playerViewGTEM)

               
        let playerManager = ZFAVPlayerManager() // 使用 ZFAVPlayerManager 作为播放器管理器
        guard let url = URL.init(string: linkUrlGTEM) else{
            SVProgressHUD.showInfo(withStatus: "Sorry, the video address does not exist")
            backendGTEm()
            return
        }
        
        playerManager.assetURL = url
             
        playerGTEM = ZFPlayerController(playerManager: playerManager, containerView: playerViewGTEM)
        let controlView = ZFPlayerControlView.init()
        controlView.fastViewAnimated = true
        controlView.autoHiddenTimeInterval = 5
        controlView.autoFadeTimeInterval = 0.5
        controlView.prepareShowLoading = true
        controlView.prepareShowControlView = false
        controlView.showCustomStatusBar = true
        playerGTEM?.controlView = controlView
    
        playerGTEM?.shouldAutoPlay = true
               
        playerGTEM?.currentPlayerManager.isMuted = false  // 是否静音
        playerGTEM?.currentPlayerManager.volume = 1.0
        playerGTEM?.currentPlayerManager.play()
     
        
       
        
        let backnoinag = UIButton(frame: CGRect.init(x: 8, y: self.view.safeAreaInsets.top + 45, width: 26, height: 40))
        backnoinag.setImage(UIImage.init(named: "tobnaGTERD"), for: .normal)
        
        backnoinag.addTarget(self, action: #selector(backendGTEm), for: .touchUpInside)

        view.addSubview(backnoinag)
    }
    
    
    @objc func backendGTEm() {
        self.navigationController?.popViewController(animated: true)
        
    }
    

}


