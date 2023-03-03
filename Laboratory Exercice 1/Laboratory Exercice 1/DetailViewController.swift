//
//  DetailViewController.swift
//  Laboratory Exercice 1
//
//  Created by student on 3/3/23.
//

import UIKit

class DetailViewController: UIViewController {


    @IBOutlet weak var random: UIImageView!
    @IBOutlet weak var lbl: UILabel!
    
    var Image = UIImage()
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        random.image = Image
        lbl.text = name

        // Do any additional setup after loading the view.
    }
    

}
