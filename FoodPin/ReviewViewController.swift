//
//  ReviewViewController.swift
//  FoodPin
//
//  Created by Developer Engineer on 2017/10/13
//  Copyright © 2017 Locosys test. All rights reserved.
//


import UIKit


class ReviewViewController: UIViewController {

    @IBOutlet var backgroundImageView:UIImageView!
    @IBOutlet var ratingStackView:UIStackView!
    @IBOutlet var dislikeButton:UIButton!
    @IBOutlet var goodButton:UIButton!
    @IBOutlet var greatButton:UIButton!
    
    var rating:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 對背景圖像視圖應用模糊效果
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView)

        // Scale down & move the rating stack view off the screen
//        let scale = CGAffineTransformMakeScale(0.0, 0.0)
//        let translate = CGAffineTransformMakeTranslation(0, 500)
//        ratingStackView.transform = CGAffineTransformConcat(scale, translate)
        
        let translate = CGAffineTransform(translationX: 0, y: 500)
        dislikeButton.transform = translate
        goodButton.transform = translate
        greatButton.transform = translate

    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        // Spring animation
        UIView.animate(withDuration: 0.5, delay: 0.0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.5, options: [], animations: {
        
            self.dislikeButton.transform = CGAffineTransform.identity
        
        }, completion: nil)

        UIView.animate(withDuration: 0.5, delay: 0.2, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.5, options: [], animations: {
            
            self.goodButton.transform = CGAffineTransform.identity
            
            }, completion: nil)

        UIView.animate(withDuration: 0.5, delay: 0.4, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.5, options: [], animations: {
            
            self.greatButton.transform = CGAffineTransform.identity
            
            }, completion: nil)

        // Normal animation
//        UIView.animateWithDuration(0.7, delay: 0.0, options: [], animations: {
//            self.ratingStackView.transform = CGAffineTransformIdentity
//        }, completion: nil)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ratingSelected(_ sender: UIButton) {

        switch (sender.tag) {
        case 100: rating = "dislike"
        case 200: rating = "good"
        case 300: rating = "great"
        default: break
        }
        
        performSegue(withIdentifier: "unwindToDetailView", sender: sender)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
