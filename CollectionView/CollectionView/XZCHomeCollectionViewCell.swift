//
//  XZCHomeCollectionViewCell.swift
//  CollectionView
//
//  Created by etlfab on 2021/5/10.
//

import UIKit

class XZCHomeCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var avatarImage: UIImageView!
    
    /**
     不适用xib需要这么写
     */
    //    override init(frame: CGRect) {
    //        super.init(frame: frame)
    //        self.avatarImage.backgroundColor = .red
    //
    //    }
    //    required init?(coder aDecoder: NSCoder) {
    //        super.init(coder: aDecoder)
    //
    //        fatalError("init(coder:) has not been implemented")
    //
    //    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }
    
    open func setImage(imageUrl: String) {
        self.avatarImage.image = UIImage(named: imageUrl)

    }

}
