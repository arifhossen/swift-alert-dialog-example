
import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func btnAction(_ sender: Any) {
        
        self.alertDialog(title: "Information", message: "Alert Dialog Message will come here....")
        
    }
    
    @IBAction func btn2Action(_ sender: Any) {
        
        self.alertDialog2(title: "Do you want to eat something?", message: "If yes please click yes button otherwise select no")
    }
    
    
    @IBAction func btn3Action(_ sender: Any) {
        
        self.alertDialog3()
    }
    
    
    
    
    func alertDialog(title:String,message:String)
    {
        
        let alertController = UIAlertController(title: title,
                                                message: message,
                                                preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion:  nil)
    }
    
    
    func alertDialog2(title:String,message:String)
    {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
        
        
        self.present(alert, animated: true)
    }
    
    
    func alertDialog3()
    {
        let alert = UIAlertController(title: "What's your friend name?", message: nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        alert.addTextField(configurationHandler: { textField in
            textField.placeholder = "Please Enter your name here..."
        })
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            
            if let name = alert.textFields?.first?.text {
                print("Your name: \(name)")
            }
        }))
        
        self.present(alert, animated: true)
        
    }
    
    
    
}

