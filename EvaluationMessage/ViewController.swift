//
//  ViewController.swift
//  EvaluationMessage
//
//  Created by leo_unision on 2017/7/23.
//  Copyright © 2017年 unision. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextViewDelegate,FloatRatingViewDelegate {

    @IBOutlet weak var uitextEvaluationMessage: UITextView!
    @IBOutlet weak var floatRatingView: FloatRatingView!
    
    var floatStars:Float = 0.0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        uitextEvaluationMessage.textColor = UIColor.lightGray
        uitextEvaluationMessage.delegate = self
        self.floatRatingView.delegate = self
    }


    //MARK: UITextViewDelegate實作區
    func textViewDidBeginEditing(_ textView: UITextView)
    {
        if textView.textColor == UIColor.lightGray {
            textView.text = nil
            textView.textColor = UIColor.black
        }
    }

    // MARK: FloatRatingViewDelegate
    func floatRatingView(_ ratingView: FloatRatingView, isUpdating rating:Float)
    {
//        print( NSString(format: "%.2f", self.floatRatingView.rating) as String)
    }
    
    func floatRatingView(_ ratingView: FloatRatingView, didUpdate rating: Float)
    {
        floatStars = self.floatRatingView.rating
        print( NSString(format: "%.2f", self.floatRatingView.rating) as String)
    }
}

