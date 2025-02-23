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
                   
                    self.navigationController?.popViewController(animated: true)
                }
               
                
            }else{
                
                
                     
                    
                let hudINfoGTEM = JGProgressHUD(style: .light)
                hudINfoGTEM.textLabel.text = "Sorry,the uploaded video is empty!"
                hudINfoGTEM.show(in: self.view)
                hudINfoGTEM.dismiss(afterDelay: 2.0)
                    
                
                
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
        
        
        
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            
             
            

            
            var configuration = PHPickerConfiguration()
            

           
            configuration.filter = .videos // 只显示视频
            configuration.selectionLimit = 1 // 选择数量
            
            let picker = PHPickerViewController(configuration: configuration)
            picker.delegate = self
            present(picker, animated: true)
           
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
        
        
        
        
            guard let result = results.first else { return }
            let itemProvider = result.itemProvider
   
        let hudGTEM = JGProgressHUD(style: .light)
        hudGTEM.textLabel.text = "uploading......"
        hudGTEM.show(in: self.view)
      
            if itemProvider.hasItemConformingToTypeIdentifier(UTType.movie.identifier) {
                itemProvider.loadFileRepresentation(forTypeIdentifier: UTType.movie.identifier) { [weak self] url, error in
                    guard let self = self, let url = url else {
                        DispatchQueue.main.async {
                            

                           
                            
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
                    
                    
                    
                    

                   
                    let targetURL = tempDirectory.appendingPathComponent(url.lastPathComponent)
                    do {
                       
                        try FileManager.default.copyItem(at: url, to: targetURL)
                    
                        
                        let asset = AVAsset(url: targetURL)
                        
                        
                        self.fetchGTEMVideoFirstImageFrame(from: asset)
                    } catch {
                        DispatchQueue.main.async {
                            
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
  
   
    private func fetchGTEMVideoFirstImageFrame(from asset: AVAsset) {
            let imageGeneratorGTEm = AVAssetImageGenerator(asset: asset)
        
        
        
            imageGeneratorGTEm.appliesPreferredTrackTransform = true
        
        
            let time = CMTime(seconds: 0, preferredTimescale: 600) // 获取第一帧
       
       
            imageGeneratorGTEm.generateCGImagesAsynchronously(forTimes: [NSValue(time: time)]) { _, image, _, result, error in
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
                  
                    let hudIsuccessGTEM = JGProgressHUD(style: .light)
                    hudIsuccessGTEM.textLabel.text = "Add video successed!"
                    hudIsuccessGTEM.indicatorView = JGProgressHUDSuccessIndicatorView()
                    hudIsuccessGTEM.show(in: self.view)
                    hudIsuccessGTEM.dismiss(afterDelay: 2.0)
                   
                }
            }
        }
   
}
