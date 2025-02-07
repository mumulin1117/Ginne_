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
    
    @IBOutlet weak var postvideobuttonGETEm: UIButton!
    
    @IBOutlet weak var videotitleGTEM: UITextView!
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        videotitleGTEM.delegate = self
    }
    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }

    @IBAction func startPostButtonmgn(_ sender: UIButton) {
        if let newercontent = videotitleGTEM.text, newercontent.count > 0, newercontent != "Enter publish content" {
            
            if ifvpdateVideo {
                
                SVProgressHUD.show()
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 4){
                    SVProgressHUD.showSuccess(withStatus: "The published content will be displayed after approval!")
                    
                    self.navigationController?.popViewController(animated: true)
                }
               
                
            }else{
                SVProgressHUD.showInfo(withStatus: "Sorry,the uploaded video is empty!")
            }
            
           
        }else{
            SVProgressHUD.showInfo(withStatus: "Sorry,publish content is empty!")
            
        }
        
    }
    
    
    
    @IBAction func beginUploadLogingGTEm(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            var configuration = PHPickerConfiguration()
            configuration.filter = .videos // 只显示视频
            configuration.selectionLimit = 1 // 选择数量
            
            let picker = PHPickerViewController(configuration: configuration)
            picker.delegate = self
            present(picker, animated: true)
            return
        }
        
        SVProgressHUD.showInfo(withStatus: "Sorry,No album permission!")
       
        
    }
}


extension  GTETiaVideoPostMojito :PHPickerViewControllerDelegate{
    
    //MARK: -   获取本地视频缩略图
    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
            dismiss(animated: true)
            
            guard let result = results.first else { return }
            let itemProvider = result.itemProvider
        
        SVProgressHUD.show(withStatus: "uploading......")

       
            if itemProvider.hasItemConformingToTypeIdentifier(UTType.movie.identifier) {
                itemProvider.loadFileRepresentation(forTypeIdentifier: UTType.movie.identifier) { [weak self] url, error in
                    guard let self = self, let url = url else {
                        DispatchQueue.main.async {
                                               
                            SVProgressHUD.showError(withStatus: "Video format error!")
                                          
                        }
                        return
                    }
                    
                    // 创建临时副本（系统可能会清除原始文件）
                    let tempDirectory = FileManager.default.temporaryDirectory
                    let targetURL = tempDirectory.appendingPathComponent(url.lastPathComponent)
                    do {
                                      
                        try FileManager.default.copyItem(at: url, to: targetURL)
                        let asset = AVAsset(url: targetURL)
                        self.fetchGTEMVideoFirstImageFrame(from: asset)
                    } catch {
                        DispatchQueue.main.async {
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
            let imageGenerator = AVAssetImageGenerator(asset: asset)
            imageGenerator.appliesPreferredTrackTransform = true
            
            let time = CMTime(seconds: 0, preferredTimescale: 600) // 获取第一帧
            imageGenerator.generateCGImagesAsynchronously(forTimes: [NSValue(time: time)]) { _, image, _, result, error in
                if let error = error {
                    print("Error generating image: \(error.localizedDescription)")
                    return
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
