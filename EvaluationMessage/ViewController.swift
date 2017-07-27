//
//  ViewController.swift
//  EvaluationMessage
//
//  Created by leo_unision on 2017/7/23.
//  Copyright © 2017年 unision. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextViewDelegate {

    @IBOutlet weak var uitextEvaluationMessage: UITextView!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        uitextEvaluationMessage.textColor = UIColor.lightGray
        uitextEvaluationMessage.delegate = self
    }


    //MARK: UITextViewDelegate實作區
    func textViewDidBeginEditing(_ textView: UITextView)
    {
        if textView.textColor == UIColor.lightGray {
            textView.text = nil
            textView.textColor = UIColor.black
        }
    }
    

}

