//
//  ViewController.swift
//  Kai_Onboard
//
//  Created by kai on 2023/02/27.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var view1: UIImageView!
    
    @IBOutlet weak var view2: UIImageView!
    
    @IBOutlet weak var view3: UIImageView!
    
    @IBOutlet weak var view4: UIImageView!
    
    @IBOutlet weak var view5: UIImageView!

  
    var mainImage = UIImage(named: "photo.artframe")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
    }

    
    @IBAction func button1(_ sender: UIButton) {
        view1.image =  mainImage
        view1.load(url: imageURL.url!)
    }
    
    
    @IBAction func button2(_ sender: UIButton) {
        view2.image =  mainImage
        view2.load(url: imageURL.url!)
    }
    
    @IBAction func button3(_ sender: UIButton) {
        view3.image =  mainImage
        view3.load(url: imageURL.url!)
    }
    
    
    @IBAction func button4(_ sender: UIButton) {
        view4.image =  mainImage
        view4.load(url: imageURL.url!)
    }
    
    @IBAction func button5(_ sender: UIButton) {
        view5.image =  mainImage
        view5.load(url: imageURL.url!)
        
    }
    
    
    @IBAction func buttonAllTapped(_ sender: UIButton) {
        view1.image =  mainImage
        view2.image =  mainImage
        view3.image =  mainImage
        view4.image =  mainImage
        view5.image =  mainImage
        view1.load(url: imageURL.url!)
        view2.load(url: imageURL.url!)
        view3.load(url: imageURL.url!)
        view4.load(url: imageURL.url!)
        view5.load(url: imageURL.url!)
    }
    
    
    
    

    
}

extension UIImageView {
    func load(url: URL) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}

