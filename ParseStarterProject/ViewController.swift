/**
* Copyright (c) 2015-present, Parse, LLC.
* All rights reserved.
*
* This source code is licensed under the BSD-style license found in the
* LICENSE file in the root directory of this source tree. An additional grant
* of patent rights can be found in the PATENTS file in the same directory.
*/

import UIKit
import Parse

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate { //allows to nav to different app, allwos to pic image

    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        
        print("Image Selected")
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
        importedImage.image = image
        
    }
    
    
    @IBOutlet var importedImage: UIImageView!
    
    
    @IBAction func importImage(sender: AnyObject) {
        
        var image = UIImagePickerController()
        
        image.delegate = self
        
        image.sourceType = UIImagePickerControllerSourceType.PhotoLibrary //can change to camera
        
        image.allowsEditing = false
        
        self.presentViewController(image, animated: true, completion: nil)
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        //creation code
        /*let product = PFObject(className: "Products")
        
        product["name"] = "Ice cream"
        
        product["description"] = "vanilla"
        
        product["price"] = 4.99
        
        product.saveInBackgroundWithBlock { (success, error) in
            
            if success == true{
                
                print("Object saved with ID \(product.objectId)")
                
                
            }
            
            else{
                
                print("failed")
            
                
                print(error)
            
            }
            
        }*/
        
        
        /*let query = PFQuery(className: "Products")
        
        query.getObjectInBackgroundWithId("6XBtkpaWEa") { (object: PFObject?, error: NSError?) in
            if error != nil {
                print(error)
            }
            else if  let product = object{
                
                product["description"] = "chocolate"

                product["price"] = 5.99
                
                product.saveInBackground()
                
                //print(object!.objectForKey("description"))
            }
            
        }*/
        
    }
        
        
        

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
