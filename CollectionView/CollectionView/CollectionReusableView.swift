//
//  CollectionReusableView.swift
//  CollectionView
//
//  Created by etlfab on 2021/5/10.
//

import UIKit

class CollectionReusableView: UICollectionReusableView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.white
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height))
        label.text = "标题"
        self.addSubview(label)
    }
    
    required init?(coder aDecoder: NSCoder) {

        fatalError("init(coder) has not been implemented")

    }
    
}
