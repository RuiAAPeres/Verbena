//
//  UIBezierPathExtension.swift
//  verbena
//
//  Created by Reda Lemeden on 6/8/14.
//  Copyright (c) 2014 Kaishin & Co. All rights reserved.
//

import UIKit

extension UIBezierPath {
  func fillWithColor(color: UIColor) {
    color.setFill()
    self.fill()
    UIColor.clearColor().setFill()
  }
}