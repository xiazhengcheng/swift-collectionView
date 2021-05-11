//
//  Global.swift
//  CollectionView
//
//  Created by etlfab on 2021/5/10.
//

import UIKit

class Global: NSObject {
    var isIphoneX: Bool {
        return UI_USER_INTERFACE_IDIOM() == .phone
            && (max(UIScreen.main.bounds.height, UIScreen.main.bounds.width) == 812
            || max(UIScreen.main.bounds.height, UIScreen.main.bounds.width) == 896)
    }

}
