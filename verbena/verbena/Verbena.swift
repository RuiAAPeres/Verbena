//
//  verbena.swift
//  verbena
//
//  Created by Reda Lemeden on 6/8/14.
//  Copyright (c) 2014 Kaishin & Co. All rights reserved.
//

import UIKit
import QuartzCore

func renderImageWithSize(size: CGSize, #transparency: Bool, drawingCode: () -> ()) -> UIImage
{
  UIGraphicsBeginImageContextWithOptions(size, !transparency, 0.0)
  drawingCode()
  return UIGraphicsGetImageFromCurrentImageContext()
}

