import UIKit

class SecondViewController: UIViewController {
    var bmi: String = ""
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel()
        label.text = bmi //"Hello"
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        
        view.backgroundColor = .red
        view.addSubview(label)
        
    }
    
    func test()
    {
        //
    }
}
