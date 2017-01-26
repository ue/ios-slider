//
//  ViewController.swift
//  scrollviews
//
//  Created by ugur's mac on 26/01/2017.
//  Copyright © 2017 ugur's mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var images = [UIImageView]()
    
    @IBOutlet weak var scrollView: UIScrollView! //scroll viewin control drag ile tasinmasi
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
            
        }

        override func viewDidAppear(_ animated: Bool) {
            
            var contentWidth: CGFloat = 0.0
            for x in 0...2 {
                
                let image = UIImage(named:"icon\(x).png")
                let imageView = UIImageView(image : image)
                images.append(imageView)
                let scrollWidth = scrollView.frame.size.width
                var newX: CGFloat = 0.0
                newX = scrollWidth / 2 + scrollWidth * CGFloat(x)
                contentWidth += newX
                scrollView.addSubview(imageView)
                imageView.frame = CGRect(x: newX - 75, y: (scrollView.frame.size.height / 2) - 75, width: 150, height :150)
                //var seven = -75
                
                //  imageView.frame = CGRect(x: newX + seven , y: (view.frame.size.height / 2) + seven, width: 150, height : 150)
            
        }
            scrollView.clipsToBounds = false
             scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
    }
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

