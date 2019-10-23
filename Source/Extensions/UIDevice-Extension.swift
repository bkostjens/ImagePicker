//
//  UIDevice-Extension.swift
//  ImagePicker-iOS
//
//  Created by Barry Kostjens on 22/10/2019.
//  Copyright © 2019 Hyper Interaktiv AS. All rights reserved.
//

import UIKit

extension UIDevice {

  // MARK: Detect Notch
  static var hasNotch: Bool {
    if #available(iOS 11.0, *) {
      let bottom = UIApplication.shared.keyWindow?.safeAreaInsets.bottom ?? 0
      return bottom > 0
    } else {
      // Fallback on earlier versions
      return false
    }
  }
}
