import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBOutlet weak var photoImage: UIImageView!
    @IBAction func cameraLaunchAction(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            print("Camera can be used.")
            let ipc = UIImagePickerController()
            ipc.sourceType = .camera
            ipc.delegate = self
            
            present(ipc, animated: true, completion: nil)
        } else {
            print("Camera is not available.")
        }
    }
    @IBAction func shareAction(_ sender: Any) {
    }
    
    func imagePickerController(
        _ picker: UIImagePickerController,
        didFinishPickingMediaWithInfo info: [String : Any]
    ) {
        photoImage.image = info["UIImagePickerControllerOriginalImage"] as? UIImage
        
        dismiss(animated: true, completion: nil)
    }
}

