//
//  ViewController.swift
//  GestureRec
//
//  Created by Jaylan Tucker on 10/12/21.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate{
    
    let imagePicker = UIImagePickerController()
    
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var dress: UIImageView!
    @IBOutlet weak var stache: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.cyan
    }

    @IBAction func tapScreenAction(_ sender: UITapGestureRecognizer) {
        var tapLoc = sender.location(in: view)
        mainImage.center = tapLoc
    }
    @IBAction func panAction(_ sender: UIPanGestureRecognizer) {
       var panLoc =  sender.location(in: view)
        dress.center = panLoc
    }
        @IBAction func panAction2(_ sender: UIPanGestureRecognizer) {
           var panLoc =  sender.location(in: view)
            stache.center = panLoc
    }
    @IBAction func photoBut(_ sender: Any) {
        imagePicker.sourceType = UIImagePickerController.SourceType.photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    @IBAction func cameraBut(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(.camera){
        imagePicker.sourceType = UIImagePickerController.SourceType.camera
        }
        else {
            imagePicker.sourceType = UIImagePickerController.SourceType.photoLibrary
        }
        present(imagePicker, animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true) {
            self.mainImage.image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
    }
}

}
