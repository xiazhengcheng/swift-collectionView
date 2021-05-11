//
//  ViewController.swift
//  CollectionView
//
//  Created by etlfab on 2021/5/10.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    var collectionView:UICollectionView?
    let ScreenHeight = UIScreen.main.bounds.size.height
    let ScreenWidth = UIScreen.main.bounds.size.width
    
    var top:CGFloat? = 0
    var bottom:CGFloat? = 0

    let dataArray = ["IMG_20100103_104821.jpg","IMG_20100103_111432.jpg","IMG_20100103_140912.jpg","IMG_20100103_104716.jpg","IMG_20100103_111514.jpg","IMG_20100103_134637.jpg","IMG_20100103_140835.jpg","IMG_20100103_104456.jpg","IMG_20100103_104734.jpg","IMG_20100103_140847.jpg","IMG_20100103_150918.jpg"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "collectionView"
        
        let safeAreaInset = safeAreaInsets()
        top = safeAreaInset.top
        bottom = safeAreaInset.bottom
        
        createCollectionView()
    }
    
    func safeAreaInsets() -> UIEdgeInsets {
        var safeAreaInsets = UIEdgeInsets.init(top: 20, left: 0, bottom: 0, right: 0)
        var window: UIWindow?
        if  #available(iOS 11.0 , *){
            if #available(iOS 13.0, *) {
                window = UIApplication.shared.windows.first { $0.isKeyWindow }
            } else {
                window = UIApplication.shared.keyWindow
            }
            safeAreaInsets = window!.safeAreaInsets
            
        }
        return safeAreaInsets
        
    }
    
    func createCollectionView() {
        let flowLayout = UICollectionViewFlowLayout()
        collectionView = UICollectionView(frame: CGRect(x: 0, y: top! + 0, width: ScreenWidth, height: ScreenHeight - bottom! - top!),collectionViewLayout: flowLayout)
//        collectionView?.backgroundColor = .orange
        collectionView?.delegate = self
        collectionView?.dataSource = self
        collectionView?.backgroundColor = .white

        
//        collectionView?.register(XZCHomeCollectionViewCell.self, forCellWithReuseIdentifier: "homeCellId")
        collectionView?.register(UINib(nibName: "XZCHomeCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "homeCellId")
        collectionView?.register(CollectionReusableView.self, forSupplementaryViewOfKind: "head", withReuseIdentifier: "headId")
        
        view.addSubview(collectionView!)
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return dataArray.count
    }
    

    
    //section
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "homeCellId", for: indexPath) as! XZCHomeCollectionViewCell
        cell.setImage(imageUrl: dataArray[indexPath.row])
        return cell
    }
    
    //每个分区的内边距
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10);
        
    }
    
    //item 的尺寸

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        return CGSize(width: ScreenWidth / 3.0 - 50 / 3.0, height: ScreenWidth / 3.0 - 50 / 3.0)

    }
    
    //最小行间距

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {

        return 10;

    }
    
    //最小 item 间距

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {

        return 10;

    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = DetailViewController();
        vc.imageUrl = dataArray[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

