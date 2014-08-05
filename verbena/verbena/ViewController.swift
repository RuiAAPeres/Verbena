//
//  ViewController.swift
//  verbena
//
//  Created by Reda Lemeden on 6/8/14.
//  Copyright (c) 2014 Kaishin & Co. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var imageView: UIImageView!

  override func viewDidLoad() {
    super.viewDidLoad()

    let renderedImage = renderImageWithSize(CGSize(width: 200, height: 200), transparency: true) {
      let backgroundColor = UIColor(hue: 0.289, saturation: 0.485, brightness: 0.792, alpha: 1.0)

      var ovalPath = UIBezierPath(ovalInRect: CGRectMake(0, 0, 200, 200))
      ovalPath.fillWithColor(backgroundColor)
      
      var letterPath = UIBezierPath()
      let startPoint = CGPoint(x: 48, y: 60)
      letterPath.moveToPoint(startPoint)
      letterPath.addLineToPoint(CGPoint(x: 76, y: 65))
      letterPath.addLineToPoint(CGPoint(x: 100, y: 110))
      letterPath.addLineToPoint(CGPoint(x: 122, y: 65))
      letterPath.addLineToPoint(CGPoint(x: 150, y: 60))
      letterPath.addLineToPoint(CGPoint(x: 100, y: 158))
      letterPath.addLineToPoint(startPoint)
      letterPath.closePath()
      letterPath.fillWithColor(UIColor.whiteColor())
    }

    imageView.image = renderedImage
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}

