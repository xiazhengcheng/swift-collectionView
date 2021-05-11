//
//  DetailViewController.swift
//  CollectionView
//
//  Created by etlfab on 2021/5/10.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var contentImage: UIImageView!
    var imageUrl: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.contentImage.image = UIImage(named: imageUrl ?? "")
        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
