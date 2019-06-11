//
//  AddPhotoViewController.swift
//  ViewFinder
//
//  Created by Apple on 6/11/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class AddPhotoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
   
        
    @IBOutlet weak var photoSpace: UIImageView!
    

    @IBAction func takePhoto(_ sender: Any) {
        photoAdder.sourceType = .camera   //opens the camera
        
        present(photoAdder, animated: true, completion: nil)
    }
    
    
    @IBAction func choosePhoto(_ sender: Any) {
        photoAdder.sourceType = .photoLibrary //opens up the photolibrary
        present(photoAdder, animated: true, completion: nil)
    }
    
    
    @IBAction func savePhoto(_ sender: Any) {
         photoAdder.sourceType = .savedPhotosAlbum
        present(photoAdder, animated: true, completion: nil)
    }
    
    
    @IBAction func viewAlbum(_ sender: Any) {
       //idk what to do here yet
    }
    
    
    
    var photoAdder = UIImagePickerController()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        photoAdder.delegate = self //tell the objext to give any info back to this classe (self)

        // Do any additional setup after loading the view.
    }
    
    internal func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            photoSpace.image = selectedImage
        }
        
        photoAdder.dismiss(animated: true, completion: nil)
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
}
