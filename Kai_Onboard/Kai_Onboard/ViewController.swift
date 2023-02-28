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
    let url = URL(string: "https://picsum.photos/id/870/200/300?grayscale&blur=2")
    let url2 = URL(string: "https://picsum.photos/id/237/200/300")
    let url3 = URL(string: "https://picsum.photos/seed/picsum/200/300")
    let url4 = URL(string: "https://picsum.photos/200/300?grayscale")
    let url5 = URL(string: "https://picsum.photos/200/300/?blur")
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
    }

    
    @IBAction func button1(_ sender: UIButton) {
        view1.image =  UIImage(named: "photo.artframe")
        view1.load(url: url!)
    }
    
    
    @IBAction func button2(_ sender: UIButton) {
        view2.image =  UIImage(named: "photo.artframe")
        view2.load(url: url2!)
    }
    
    @IBAction func button3(_ sender: UIButton) {
        view3.image =  UIImage(named: "photo.artframe")
        
        view3.load(url: url3!)
    }
    
    
    @IBAction func button4(_ sender: UIButton) {
        view4.image =  UIImage(named: "photo.artframe")
        view4.load(url: url4!)
    }
    
    @IBAction func button5(_ sender: UIButton) {
        view5.image =  UIImage(named: "photo.artframe")
        view5.load(url: url5!)
        
    }
    
    
    @IBAction func buttonAllTapped(_ sender: UIButton) {
        view1.image =  UIImage(named: "photo.artframe")
        view2.image =  UIImage(named: "photo.artframe")
        view3.image =  UIImage(named: "photo.artframe")
        view4.image =  UIImage(named: "photo.artframe")
        view5.image =  UIImage(named: "photo.artframe")
        view1.load(url: url!)
        view2.load(url: url2!)
        view3.load(url: url3!)
        view4.load(url: url4!)
        view5.load(url: url5!)
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

