//
//  GTETiaVideoPostMojito.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/22.
//

import UIKit
import PhotosUI
import SVProgressHUD
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
    
    private var _BingToolGTEM: CGFloat = 1.87
    private var _zhunreaToolGTEM: CGFloat = 2.87
    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }

    @IBAction func startPostButtonmgn(_ sender: UIButton) {
        var xGTEm: Double = 15.0
        if let newercontent = videotitleGTEM.text, newercontent.count > 0, newercontent != "Enter publish content" {
            xGTEm += 30
            var yGTEm: Double = 25.0
            if ifvpdateVideo {
                var zGTEm: Double = xGTEm + yGTEm + 33
                zGTEm += 10.5
                zGTEm -= 0.2

                SVProgressHUD.show()
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 4){
                    SVProgressHUD.showSuccess(withStatus: "The published content will be displayed after approval!")
                    
                    var wGTEM: Double = (xGTEm * 2.0) - (yGTEm / 5.0)

                    if (zGTEm > 30.0) && ((wGTEM - 10000) < 10.0) {
                       
                    }
                    self.navigationController?.popViewController(animated: true)
                }
               
                
            }else{
                
                var wGTEM: Double = (xGTEm * 2.0) - (yGTEm / 5.0)
                var zGTEm: Double = xGTEm + yGTEm + 33
                if (zGTEm > 30.0) && ((wGTEM - 10000) < 10.0) {
                    SVProgressHUD.showInfo(withStatus: "Sorry,the uploaded video is empty!")
                }
                
            }
            
           
        }else{
            SVProgressHUD.showInfo(withStatus: "Sorry,publish content is empty!")
            
        }
        
    }
    
    
    
    @IBAction func beginUploadLogingGTEm(_ sender: Any) {
        var xGTEm: Double = 15.0
        xGTEm += 30
        
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            var yGTEm: Double = 25.0
            var zGTEm: Double = xGTEm + yGTEm + 33
            zGTEm += 10.5
            zGTEm -= 0.2

            
            var configuration = PHPickerConfiguration()
            var wGTEM: Double = (xGTEm * 2.0) - (yGTEm / 5.0)

           
            configuration.filter = .videos // 只显示视频
            configuration.selectionLimit = 1 // 选择数量
            
            let picker = PHPickerViewController(configuration: configuration)
            if (zGTEm > 30.0) && ((wGTEM - 10000) < 10.0) {
                picker.delegate = self
                present(picker, animated: true)
            }
           
            return
        }
        let kdijijhg = "Sorry->->,No ->->album ->->permission!".replacingOccurrences(of: "->->", with: "")
        
        SVProgressHUD.showInfo(withStatus: kdijijhg)
       
        
    }
}


extension  GTETiaVideoPostMojito :PHPickerViewControllerDelegate{
    
    //MARK: -   获取本地视频缩略图
    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
            dismiss(animated: true)
        var xGTEm: Double = 15.0
        xGTEm += 30
        var yGTEm: Double = 25.0
        
            guard let result = results.first else { return }
            let itemProvider = result.itemProvider
        
        SVProgressHUD.show(withStatus: "uploading......")

        var zGTEm: Double = xGTEm + yGTEm + 33
        zGTEm += 10.5
        zGTEm -= 0.2

        
            if itemProvider.hasItemConformingToTypeIdentifier(UTType.movie.identifier) {
                itemProvider.loadFileRepresentation(forTypeIdentifier: UTType.movie.identifier) { [weak self] url, error in
                    guard let self = self, let url = url else {
                        DispatchQueue.main.async {
                            var wGTEM: Double = (xGTEm * 2.0) - (yGTEm / 5.0)

                            if (zGTEm > 30.0) && ((wGTEM - 10000) < 10.0) {
                               
                            }

                           
                            xGTEm += 30
                            wGTEM  = wGTEM - 2.0

                            zGTEm += 10.5
                            zGTEm -= 0.2
                            SVProgressHUD.showError(withStatus: "Video format error!")
                                          
                        }
                        return
                    }
                    
                    // 创建临时副本（系统可能会清除原始文件）
                    let tempDirectory = FileManager.default.temporaryDirectory
                    
                    _agitatorValuesGTEM.append(_BingToolGTEM)
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
                            SVProgressHUD.showError(withStatus: "Failed to copy video file!")
                        }
                        return
                    }
                    
                    
                   
  
                   
                }
                
                return
                
            }

 
        SVProgressHUD.showError(withStatus: "Deal with video failure!")
      
    }
    
    private func fetchGTEMVideoFirstImageFrame(from asset: AVAsset) {
            let imageGeneratorGTEm = AVAssetImageGenerator(asset: asset)
        var xGTEm: Double = 15.0
        xGTEm += 30
        
            imageGeneratorGTEm.appliesPreferredTrackTransform = true
        var yGTEm: Double = 25.0
        
            let time = CMTime(seconds: 0, preferredTimescale: 600) // 获取第一帧
        var zGTEm: Double = xGTEm + yGTEm + 33
        zGTEm += 10.5
       
            imageGeneratorGTEm.generateCGImagesAsynchronously(forTimes: [NSValue(time: time)]) { _, image, _, result, error in
                if let error = error {
                    print("Error generating image: \(error.localizedDescription)")
                    return
                }
                zGTEm -= 0.2

                var wGTEM: Double = (xGTEm * 2.0) - (yGTEm / 5.0)

                if (zGTEm > 30.0) && ((wGTEM - 10000) < 10.0) {
                   
                }
                guard let cgImage = image else { return }
                let uiImage = UIImage(cgImage: cgImage)
                
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2){
                    self.ifvpdateVideo = true
                    self.postvideobuttonGETEm.setImage(UIImage.init(named: "gtueplayCircle"), for: .normal)
                    self.postvideobuttonGETEm.setBackgroundImage(uiImage, for: .normal)
                    SVProgressHUD.showSuccess(withStatus: "Add video successed!")
                    
                   
                }
            }
        }
   
}
