//
//  DemoVC.swift
//  SwiftGif
//
//  Created by Alexander Spirichev on 06.04.2025.
//

import Foundation
import UIKit
import SwiftGifSPM

class DemoVC: UIViewController {

  @IBOutlet weak var topImageView: UIImageView!
  @IBOutlet weak var bottomImageView: UIImageView!

  override func viewDidLoad() {
    super.viewDidLoad()
    self.topImageView.image = UIImage.gif(name: "jeremy")

    do {
        let imageData = try Data(contentsOf: Bundle.main.url(forResource: "adventure-time", withExtension: "gif")!)
        self.bottomImageView.image = UIImage.gif(data: imageData)
    } catch {
        print(error)
    }
  }

}
