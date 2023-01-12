//
//  ViewController.swift
//  count_original
//
//  Created by 瀬川太朗 on 2023/01/12.
//

import UIKit

class ViewController: UIViewController {
    var countNumber:Int = 0
    var eggImageNumber:Int = 0
    
    var eggImageArray = [
        "egg1",
        "egg2",
        "Noimage",
    ]
    var riceImageArray = [
        "rice",
        "rice1",
    ]
    @IBOutlet weak var eggImageView: UIImageView!
    
    @IBOutlet weak var restartButton: UIButton!
    @IBOutlet weak var riceImageView: UIImageView!
    
    @IBOutlet weak var doLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        restartButton.isHidden = true
        // Do any additional setup after loading the view.
    }
    @IBAction func eggCrush(_ sender: Any) {
        countNumber += 1
        print(countNumber)
        if countNumber == 15 {
            
            let eggImage = UIImage(named: "egg2")
            eggImageView.image = eggImage
            
        } else if countNumber == 20 {
            
            let eggimage = UIImage(named: "Noimage")
            eggImageView.image = eggimage
            
            let riceImage = UIImage(named: "rice1")
            riceImageView.image = riceImage
            doLabel.text = "極上の卵かけご飯のできあがり！"
            restartButton.isHidden = false
        }
        
    }
    
    @IBAction func restart(_ sender: Any) {
        
        let eggImage = UIImage(named: "egg1")
        eggImageView.image = eggImage
        
        let riceImage = UIImage(named: "rice")
        riceImageView.image = riceImage
        doLabel.text = "極上の卵かけご飯を完成させろ！！"
        restartButton.isHidden = true
        countNumber = 0
        
    }
    
    
    
    
}

