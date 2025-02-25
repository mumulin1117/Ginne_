//
//  GTEMPlayerMojito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/2/5.
//

import UIKit
import ZFPlayer
import JGProgressHUD
class GTEMPlayerMojito: UIViewController {
    private  var playerGTEM: ZFPlayerController?
    
    var playerViewGTEM: ZFPlayerView = ZFPlayerView()
    let videoPlayerKeyGTEm = "videoPlayer" // Key for the video player instance
       

  

    private  var linkUrlGTEM:String
    let defaultPlaybackSpeedGTEm: Float = 1.0 // Default playback speed
    

    init(linkGTEM_Url: String) {
        
        self.linkUrlGTEM = linkGTEM_Url
        super.init(nibName: nil, bundle: nil)
    }
    let maxVolumeLevelGTEm: Float = 1.0 // Maximum volume level

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
  
   
    deinit {
        self.playerGTEM?.currentPlayerManager.stop()
        
        

        self.playerGTEM = nil
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playerViewGTEM = ZFPlayerView()
              
        playerViewGTEM.frame = self.view.bounds
               
        self.view.addSubview(playerViewGTEM)

               
        let playerManagerGTEm = ZFAVPlayerManager()
        guard let url = URL.init(string: linkUrlGTEM) else{
            let hudINfoGTEM = JGProgressHUD(style: .light)
            
            hudINfoGTEM.textLabel.text = "Sorry, the video address does not exist"
            hudINfoGTEM.indicatorView = JGProgressHUDErrorIndicatorView(image: UIImage.init(named: "Rewort_GTEA")!)
            
            hudINfoGTEM.show(in: self.view)
            
            hudINfoGTEM.dismiss(afterDelay: 2.0)
           
            backendGTEm()
            return
        }
        
        playerManagerGTEm.assetURL = url
        
        
        
        playerGTEM = ZFPlayerController(playerManager: playerManagerGTEm, containerView: playerViewGTEM)
        
        

       
        let controGTEMlView = ZFPlayerControlView.init()
        

        self.view.backgroundColor =  UIColor(red: 0.66, green: 0.22, blue: 0.17, alpha: 1)
       
        
         
        controGTEMlView.fastViewAnimated = true
        
        
        controGTEMlView.autoHiddenTimeInterval = 5
        
        
        

       
        controGTEMlView.autoFadeTimeInterval = 0.5
        
        
        

        
        controGTEMlView.showCustomStatusBar = true
        
        controGTEMlView.prepareShowLoading = true
        
        controGTEMlView.prepareShowControlView = false
        
        setupVideGTEmoPlayer(controlView: controGTEMlView)
       
        playerGTEM?.currentPlayerManager.play()
     
        
       
        
        let backnoinag = UIButton(frame: CGRect.init(x: 8, y: self.view.safeAreaInsets.top + 45, width: 26, height: 40))
        backnoinag.setImage(UIImage.init(named: "tobnaGTERD"), for: .normal)
        
        backnoinag.addTarget(self, action: #selector(backendGTEm), for: .touchUpInside)

        view.addSubview(backnoinag)
    }
    
    func setupVideGTEmoPlayer(controlView:ZFPlayerControlView) {
         
        playerGTEM?.controlView = controlView
        
        playerGTEM?.shouldAutoPlay = true
        
        adjustGTEMVolume(level: 33)
        
    }

    @objc func backendGTEm() {
        self.navigationController?.popViewController(animated: true)
        
    }
    
    func adjustGTEMVolume(level: Float) {
          
        playerGTEM?.currentPlayerManager.isMuted = false
        
        playerGTEM?.currentPlayerManager.volume = 1.0
    }
}


