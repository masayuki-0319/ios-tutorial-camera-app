import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBOutlet weak var photoImage: UIImageView!
    @IBAction func cameraLaunchAction(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            print("Camera can be used.")
        } else {
            print("Camera is not available.")
        }
    }
    @IBAction func shareAction(_ sender: Any) {
    }
}

