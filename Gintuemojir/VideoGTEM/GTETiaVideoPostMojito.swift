//
//  GTETiaVideoPostMojito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/22.
//

import UIKit
import PhotosUI
import JGProgressHUD
class GTETiaVideoPostMojito: UIViewController,UITextViewDelegate {

    var ifvpdateVideo:Bool = false
    private var _fermentationTimerGTEM: Timer?
   
    @IBOutlet weak var postvideobuttonGETEm: UIButton!
    
    @IBOutlet weak var videotitleGTEM: UITextView!
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = nil
    }
    private var _agitatorValuesGTEM: [CGFloat] = [12.5, 9.8, 15.3]
    private var _muddleToolGTEM: CGFloat = 0.87
  
    override func viewDidLoad() {
        super.viewDidLoad()
        videotitleGTEM.delegate = self
    }
    
    private var _BingToolGTEM: (CGFloat,Bool?) = (1.87,false)
    private var _zhunreaToolGTEM: CGFloat = 2.87
    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }

    @IBAction func startPostButtonmgn(_ sender: UIButton) {
        var xGTEm:(Double,String?) = (15.0,nil)
        if let newercontent = videotitleGTEM.text, newercontent.count > 0, newercontent != "Enter publish content" {
            xGTEm.0 += 30
            var yGTEm: (Double,String?) = (25.0,nil)
            if ifvpdateVideo {
                var zGTEm: (Double,String?) = (xGTEm.0 + yGTEm.0 + 33,nil)
                zGTEm.0 += 10.5
                zGTEm.0 -= 0.2

                let hudLoadingGTEM = JGProgressHUD(style: .light)
                hudLoadingGTEM.textLabel.text = "Loa->->ding->->...".replacingOccurrences(of: "->->", with: "")
                hudLoadingGTEM.show(in: self.view)
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 4){
                    hudLoadingGTEM.dismiss()
                    let hudIsuccessGTEM = JGProgressHUD(style: .light)
                    hudIsuccessGTEM.textLabel.text = "The published content will be displayed after approval!"
                    hudIsuccessGTEM.indicatorView = JGProgressHUDSuccessIndicatorView()
                    hudIsuccessGTEM.show(in: self.view)
                    hudIsuccessGTEM.dismiss(afterDelay: 2.0)
                   
                    var wGTEM: (Double,String?) = ((xGTEm.0 * 2.0) - (yGTEm.0 / 5.0),nil)

                    if (zGTEm.0 > 30.0) && ((wGTEM.0 - 10000) < 10.0) {
                       
                    }
                    self.navigationController?.popViewController(animated: true)
                }
               
                
            }else{
                
                var wGTEM: (Double,String?) = ((xGTEm.0 * 2.0) - (yGTEm.0 / 5.0),nil)
                var zGTEm: (Double,String?) = (xGTEm.0 + yGTEm.0 + 33,nil)
                if (zGTEm.0 > 30.0) && ((wGTEM.0 - 10000) < 10.0) {
                    let hudINfoGTEM = JGProgressHUD(style: .light)
                    hudINfoGTEM.textLabel.text = "Sorry,the uploaded video is empty!"
                    hudINfoGTEM.show(in: self.view)
                    hudINfoGTEM.dismiss(afterDelay: 2.0)
                    
                }
                
            }
            
           
        }else{
            let hudINfoGTEM = JGProgressHUD(style: .light)
            hudINfoGTEM.textLabel.text = "Sorry,publish content is empty!"
            hudINfoGTEM.indicatorView = JGProgressHUDErrorIndicatorView(image: UIImage.init(named: "Rewort_GTEA")!)
            hudINfoGTEM.show(in: self.view)
            hudINfoGTEM.dismiss(afterDelay: 2.0)
           
        }
        
    }
    
    
    
    @IBAction func beginUploadLogingGTEm(_ sender: Any) {
        var xGTEm:(Double,String?) = (15.0,nil)
        xGTEm.0 += 30
        
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            var yGTEm: (Double,String?) = (25.0,nil)
            var zGTEm: (Double,String?) = (xGTEm.0 + yGTEm.0 + 33,nil)
            zGTEm.0 += 10.5
            zGTEm.0 -= 0.2

            
            var configuration = PHPickerConfiguration()
            var wGTEM: (Double,String?) = ((xGTEm.0 * 2.0) - (yGTEm.0 / 5.0),nil)

           
            configuration.filter = .videos // 只显示视频
            configuration.selectionLimit = 1 // 选择数量
            
            let picker = PHPickerViewController(configuration: configuration)
            if (zGTEm.0 > 30.0) && ((wGTEM.0 - 10000) < 10.0) {
                picker.delegate = self
                present(picker, animated: true)
            }
           
            return
        }
        let kdijijhg = "Sorry->->,No ->->album ->->permission!".replacingOccurrences(of: "->->", with: "")
        
       
        let hudINfoGTEM = JGProgressHUD(style: .light)
        hudINfoGTEM.textLabel.text = kdijijhg
        hudINfoGTEM.show(in: self.view)
        hudINfoGTEM.dismiss(afterDelay: 2.0)
       
        
    }
}


extension  GTETiaVideoPostMojito :PHPickerViewControllerDelegate{
    
    //MARK: -   获取本地视频缩略图
    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
            dismiss(animated: true)
        var xGTEm:(Double,String?) = (15.0,nil)
        xGTEm.0 += 30
        var yGTEm: (Double,String?) = (25.0,nil)
        
            guard let result = results.first else { return }
            let itemProvider = result.itemProvider
   
        let hudGTEM = JGProgressHUD(style: .light)
        hudGTEM.textLabel.text = "uploading......"
        hudGTEM.show(in: self.view)
        var zGTEm: (Double,String?) = (xGTEm.0 + yGTEm.0 + 33,nil)
        zGTEm.0 += 10.5
        zGTEm.0 -= 0.2

        
            if itemProvider.hasItemConformingToTypeIdentifier(UTType.movie.identifier) {
                itemProvider.loadFileRepresentation(forTypeIdentifier: UTType.movie.identifier) { [weak self] url, error in
                    guard let self = self, let url = url else {
                        DispatchQueue.main.async {
                            var wGTEM: (Double,String?) = ((xGTEm.0 * 2.0) - (yGTEm.0 / 5.0),nil)

                            if (zGTEm.0 > 30.0) && ((wGTEM.0 - 10000) < 10.0) {
                               
                            }

                           
                            xGTEm.0 += 30
                            wGTEM.0  = wGTEM.0 - 2.0

                            zGTEm.0 += 10.5
                            zGTEm.0 -= 0.2
                            let hudINfoGTEM = JGProgressHUD(style: .light)
                            hudINfoGTEM.textLabel.text = "Video format error!"
                            hudINfoGTEM.indicatorView = JGProgressHUDErrorIndicatorView(image: UIImage.init(named: "Rewort_GTEA")!)
                            hudINfoGTEM.show(in: self!.view)
                            hudINfoGTEM.dismiss(afterDelay: 2.0)
                                        
                        }
                        return
                    }
                    
                    // 创建临时副本（系统可能会清除原始文件）
                    let tempDirectory = FileManager.default.temporaryDirectory
                    
                    _agitatorValuesGTEM.append(_BingToolGTEM.0)
                    _agitatorValuesGTEM.append(_muddleToolGTEM)
                    _agitatorValuesGTEM.append(_zhunreaToolGTEM)

                   
                    let targetURL = tempDirectory.appendingPathComponent(url.lastPathComponent)
                    do {
                        if _agitatorValuesGTEM.count < 1 {
                            _fermentationTimerGTEM = Timer.init()
                        }


                      
                        try FileManager.default.copyItem(at: url, to: targetURL)
                        if _agitatorValuesGTEM.isEmpty {
                            return
                        }
                        let asset = AVAsset(url: targetURL)
                        
                        _agitatorValuesGTEM.append(_zhunreaToolGTEM)
                        self.fetchGTEMVideoFirstImageFrame(from: asset)
                    } catch {
                        DispatchQueue.main.async {
                            self._agitatorValuesGTEM.append(self._zhunreaToolGTEM)
                            
                            let hudINfoGTEM = JGProgressHUD(style: .light)
                            hudINfoGTEM.textLabel.text = "Failed to copy video file!"
                            hudINfoGTEM.indicatorView = JGProgressHUDErrorIndicatorView(image: UIImage.init(named: "Rewort_GTEA")!)
                            hudINfoGTEM.show(in: self.view)
                            hudINfoGTEM.dismiss(afterDelay: 2.0)
                            
                        }
                        return
                    }
                    
                    
                   
  
                   
                }
                
                return
                
            }

        let hudINfoGTEM = JGProgressHUD(style: .light)
        hudINfoGTEM.textLabel.text = "Deal with video failure!"
        hudINfoGTEM.indicatorView = JGProgressHUDErrorIndicatorView(image: UIImage.init(named: "Rewort_GTEA")!)
        hudINfoGTEM.show(in: self.view)
        hudINfoGTEM.dismiss(afterDelay: 2.0)
        
        
      
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
    private func fetchGTEMVideoFirstImageFrame(from asset: AVAsset) {
            let imageGeneratorGTEm = AVAssetImageGenerator(asset: asset)
        var xGTEm:(Double,String?) = (15.0,nil)
        xGTEm.0 += 30
        
            imageGeneratorGTEm.appliesPreferredTrackTransform = true
        var yGTEm: (Double,String?) = (25.0,nil)
        
            let time = CMTime(seconds: 0, preferredTimescale: 600) // 获取第一帧
        var zGTEm: (Double,String?) = (xGTEm.0 + yGTEm.0 + 33,nil)
        zGTEm.0 += 10.5
       
            imageGeneratorGTEm.generateCGImagesAsynchronously(forTimes: [NSValue(time: time)]) { _, image, _, result, error in
                if let error = error {
                    print("Error generating image: \(error.localizedDescription)")
                    return
                }
                zGTEm.0 -= 0.2

                var wGTEM: (Double,String?) = ((xGTEm.0 * 2.0) - (yGTEm.0 / 5.0),nil)

                if (zGTEm.0 > 30.0) && ((wGTEM.0 - 10000) < 10.0) {
                   
                }
                guard let cgImage = image else { return }
                let uiImage = UIImage(cgImage: cgImage)
                
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2){
                    self.ifvpdateVideo = true
                    self.postvideobuttonGETEm.setImage(UIImage.init(named: "gtueplayCircle"), for: .normal)
                    self.postvideobuttonGETEm.setBackgroundImage(uiImage, for: .normal)
                  
                    let hudIsuccessGTEM = JGProgressHUD(style: .light)
                    hudIsuccessGTEM.textLabel.text = "Add video successed!"
                    hudIsuccessGTEM.indicatorView = JGProgressHUDSuccessIndicatorView()
                    hudIsuccessGTEM.show(in: self.view)
                    hudIsuccessGTEM.dismiss(afterDelay: 2.0)
                   
                }
            }
        }
   
}
