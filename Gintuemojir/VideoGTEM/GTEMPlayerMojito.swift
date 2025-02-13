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
    private var _muddleToolGTEM: CGFloat = 0.87
    var playerViewGTEM: ZFPlayerView = ZFPlayerView()
    var HoperGTEM:UIView?
    var treesHaGTEM:UIButton?

  

    private  var linkUrlGTEM:String
    
    init(linkGTEM_Url: String) {
        let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
        let pinghio = UIColor.red
        var colfulLisftGTEM = Array<UIColor>.init()

        colfulLisftGTEM.append(alpgocoloe)
        colfulLisftGTEM.append(pinghio)

        if colfulLisftGTEM.last == .blue{
            self.linkUrlGTEM = linkGTEM_Url
            super.init(nibName: nil, bundle: nil)
            return //恒为假
        }

        self.linkUrlGTEM = linkGTEM_Url
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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
    deinit {
        self.playerGTEM?.currentPlayerManager.stop()
        let alpgocoloe = UIColor.init(white: 0.99, alpha: 0.999)
        let pinghio = UIColor.red
        var colfulLisftGTEM = Array<UIColor>.init()

        colfulLisftGTEM.append(alpgocoloe)
        colfulLisftGTEM.append(pinghio)

        if colfulLisftGTEM.last == .blue{
            return //恒为假
        }

        self.playerGTEM = nil
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor =  UIColor(red: 0.66, green: 0.22, blue: 0.17, alpha: 1)
       
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
        HoperGTEM = UIView()
        HoperGTEM?.layer.borderColor = UIColor.blue.cgColor
        
        playerGTEM = ZFPlayerController(playerManager: playerManagerGTEm, containerView: playerViewGTEM)
        HoperGTEM?.alpha = 0.4
        HoperGTEM?.layer.borderWidth = 4

       
        let controlView = ZFPlayerControlView.init()
        if _muddleToolGTEM < 0 {
            self.view.addSubview(HoperGTEM!)
            HoperGTEM?.alpha = 0
        }

        let labelgGTEm = UILabel.init()
        labelgGTEm.textAlignment = .right
        labelgGTEm.adjustsFontSizeToFitWidth = true
        
        controlView.fastViewAnimated = true
        labelgGTEm.addSubview(UIView.init(frame: .zero))
        
        controlView.autoHiddenTimeInterval = 5
        
        treesHaGTEM?.setTitleColor(.blue, for: .normal)
        treesHaGTEM?.layer.borderColor = UIColor.blue.cgColor

       
        controlView.autoFadeTimeInterval = 0.5
        
        treesHaGTEM?.alpha = 0.4
        treesHaGTEM?.layer.borderWidth = 4

        
        controlView.showCustomStatusBar = true
        
        controlView.prepareShowLoading = true
        if _muddleToolGTEM < 0 {
            self.view.addSubview(treesHaGTEM!)
            treesHaGTEM?.alpha = 0
        }
        controlView.prepareShowControlView = false
        
        playerGTEM?.controlView = controlView
        if _muddleToolGTEM < 0 {
            self.view.addSubview(treesHaGTEM!)
            treesHaGTEM?.alpha = 0
        }
        playerGTEM?.shouldAutoPlay = true
        if _muddleToolGTEM < 0 {
            self.view.addSubview(treesHaGTEM!)
            treesHaGTEM?.alpha = 0
        }
        playerGTEM?.currentPlayerManager.isMuted = false
        if _muddleToolGTEM < 0 {
            self.view.addSubview(treesHaGTEM!)
            treesHaGTEM?.alpha = 0
        }
        playerGTEM?.currentPlayerManager.volume = 1.0
        if _muddleToolGTEM < 0 {
            self.view.addSubview(treesHaGTEM!)
            treesHaGTEM?.alpha = 0
        }
        if self.view.frame.height == 1 {
            labelgGTEm.isEnabled = true
            labelgGTEm.isUserInteractionEnabled = true
            self.view.addSubview(labelgGTEm)
        }

        if labelgGTEm.superview == self.view {
            //恒为假
            
        }
        playerGTEM?.currentPlayerManager.play()
     
        
       
        
        let backnoinag = UIButton(frame: CGRect.init(x: 8, y: self.view.safeAreaInsets.top + 45, width: 26, height: 40))
        backnoinag.setImage(UIImage.init(named: "tobnaGTERD"), for: .normal)
        if _muddleToolGTEM < 0 {
            self.view.addSubview(treesHaGTEM!)
            treesHaGTEM?.alpha = 0
        }
        backnoinag.addTarget(self, action: #selector(backendGTEm), for: .touchUpInside)

        view.addSubview(backnoinag)
    }
    
    
    @objc func backendGTEm() {
        self.navigationController?.popViewController(animated: true)
        
    }
    

}


