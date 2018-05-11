//
//  ViewController.swift
//  imagens
//
//  Created by Usuário Convidado on 11/05/2018.
//  Copyright © 2018 FIAP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ivTrapalhoes: UIImageView!
    let trapalhoes = ["didi", "dede", "mussum", "zacarias"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ivTrapalhoes.layer.cornerRadius = ivTrapalhoes.frame.size.height/2
        ivTrapalhoes.layer.borderWidth = 10
        ivTrapalhoes.layer.borderColor = UIColor.cyan.cgColor
        
    }
    
    @IBAction func changeTrapalhao(_ sender: UISegmentedControl) {
        ivTrapalhoes.stopAnimating()
        let imageName = trapalhoes[sender.selectedSegmentIndex]
        ivTrapalhoes.image = UIImage(named: imageName)
    }
    
    @IBAction func changeBorder(_ sender: UISlider) {
        ivTrapalhoes.layer.borderWidth = CGFloat(sender.value)
    }
    
    @IBAction func playAnimation(_ sender: UIButton) {
        var images: [UIImage] = []
        for index in 1...68{
            if let image = UIImage(named: "HomemAndando\(index).png"){
                images.append(image)
            }
        }
        ivTrapalhoes.animationImages = images
        ivTrapalhoes.animationDuration = 2
        ivTrapalhoes.animationRepeatCount = 0
        ivTrapalhoes.startAnimating()
        ivTrapalhoes.contentMode = .scaleAspectFit
        ivTrapalhoes.layer.cornerRadius = 0
        ivTrapalhoes.layer.borderWidth = 0
    }
    
    
}

