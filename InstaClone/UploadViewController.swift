//
//  UploadViewController.swift
//  InstaClone
//
//  Created by Zeliha İnan on 12.08.2025.
//

import UIKit
import Firebase

class UploadViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var commentText: UITextField!
    
    
    @IBOutlet weak var uploadButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(chooseImage))
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func chooseImage() {
        let pickerController = UIImagePickerController()
        pickerController.delegate = self
        pickerController.sourceType = .photoLibrary
        present(pickerController, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            imageView.image = selectedImage
            self.dismiss(animated: true, completion: nil)
        }
        dismiss(animated: true, completion: nil)
    }
    
    func makeAlert(titleInput: String, messageInput: String){
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func actionButtonClicked(_ sender: Any) {
        let storage = Storage.storage()
        let storageReferance = storage.reference()
        let mediaFolder = storageReferance.child("media")
        
        if let imageData = imageView.image?.jpegData(compressionQuality: 0.5) {
            
            let uuid = UUID().uuidString
            
            let imageReference = mediaFolder.child("\(uuid).jpg")
            imageReference.putData(imageData, metadata: nil) { (metadata, error) in
                if error != nil {
                    self.makeAlert(titleInput: "Error", messageInput: error?.localizedDescription ?? "Error")
                }else {
                    imageReference.downloadURL { (url, error) in
                        
                        if error == nil {
                            let imageUrl = url?.absoluteString
                            
                            //DATABASE
                            
                            
                            
                            
                        }
                    }
                }
            }
        }
    }
}
