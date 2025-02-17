//
//  V6Z3NovaClipStream.swift
//  Gintuemojir
//
//  Created by Gintuemojir on 2025/1/22.
//

import UIKit
import PhotosUI
import SVProgressHUD
class V6Z3NovaClipStream: UIViewController,UITextViewDelegate {

    var ifvpdateViopa:Bool = false
    
    @IBOutlet weak var submitActionButtonGETEm: UIButton!
    
    @IBOutlet weak var z4R6ClipName: UITextView!
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        z4R6ClipName.delegate = self
    }
    @IBAction func navibakerinhGTEM(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }

    @IBAction func initiateActionButtonmgn(_ sender: UIButton) {
        if let newercontent = z4R6ClipName.text, newercontent.count > 0, newercontent != gintuemojir(f1g2h3i4j5: "Eenptgegrw hpbunbeleiasshe acaoenotgehnft") {
            
            if ifvpdateViopa {
                
                SVProgressHUD.show()
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 4){
                    SVProgressHUD.showSuccess(withStatus: gintuemojir(f1g2h3i4j5: "Tvhpes xpcuybhlwizswhweddf jcsodnktqeenrtl qwhiylwle dbyex ddjixswpglnatyderdj labfxtlekrj yanpppnrpolvtatle!"))
                    
                    self.navigationController?.popViewController(animated: true)
                }
               
                
            }else{
                SVProgressHUD.showInfo(withStatus: gintuemojir(f1g2h3i4j5: "Sbofrergyk,rtdhqer wubpylkooaidhexdm avciedoetoi fiksz fejmnpottyl!"))
            }
            
           
        }else{
            SVProgressHUD.showInfo(withStatus: gintuemojir(f1g2h3i4j5: "Suoprlrmyx,bpwutbblciosbhz dcjownxtwemnjtb hixsj retmfpctlye!"))
            
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
        
        SVProgressHUD.showInfo(withStatus: gintuemojir(f1g2h3i4j5: "Szowrxrzyl,jNlof vaxlhbruqmm vpoenrcmdiosisuioosnw!"))
       
        
    }
}


extension  V6Z3NovaClipStream :PHPickerViewControllerDelegate{
    
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
                                               
                            SVProgressHUD.showError(withStatus: gintuemojir(f1g2h3i4j5: "Vjiudvejoc ifuozrmmhalty wedrhrvowrd!"))
                                          
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
                            SVProgressHUD.showError(withStatus: gintuemojir(f1g2h3i4j5: "Fjaoiyldetdd stzoc ncyogpmyj svgirdyewov tfjillxez!"))
                        }
                        return
                    }
                    
                    
                   
  
                   
                }
                
                return
                
            }

 
        SVProgressHUD.showError(withStatus: gintuemojir(f1g2h3i4j5: "Dreqaylc owhixtrhl pvvimdhelot ffzaliylwutrqen!"))
      
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
                    self.ifvpdateViopa = true
                    self.submitActionButtonGETEm.setImage(UIImage.init(named: "gtueplayCircle"), for: .normal)
                    self.submitActionButtonGETEm.setBackgroundImage(uiImage, for: .normal)
                    SVProgressHUD.showSuccess(withStatus: gintuemojir(f1g2h3i4j5: "Ardvde tvoijdiezos fsoujczcfewsoskepdr!"))
                    
                   
                }
            }
        }
   
}
