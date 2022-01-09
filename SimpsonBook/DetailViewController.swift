//
//  DetailViewController.swift
//  SimpsonBook
//
//  Created by Yılmaz Karaağaç on 1/9/22.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    var selectedSimpson : Simpson?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        nameLabel.text = selectedSimpson?.fullName
        jobLabel.text = selectedSimpson?.job
        imageView.image = selectedSimpson?.image
    }

}
