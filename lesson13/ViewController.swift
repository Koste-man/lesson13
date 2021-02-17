//
//  ViewController.swift
//  lesson13
//
//  Created by Konstantin Moskvichev on 08.02.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var squareView: UIView!
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    @IBOutlet weak var widthConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    @IBOutlet weak var rightConstraint: NSLayoutConstraint!
    
    
    @IBAction func previousButton(_ sender: Any) {
        if numberLabel.text == "1"{
            numberLabel.text = "7"
            animation7()
        } else if numberLabel.text == "2"{
            numberLabel.text = "1"
            animation1()
        } else if numberLabel.text == "3"{
            numberLabel.text = "2"
            animation2()
        } else if numberLabel.text == "4"{
            numberLabel.text = "3"
            animation3()
        } else if numberLabel.text == "5"{
            numberLabel.text = "4"
            animation4()
        } else if numberLabel.text == "6"{
            numberLabel.text = "5"
            animation5()
        } else if numberLabel.text == "7"{
            numberLabel.text = "6"
            animation6()
        }
    }
    
    @IBAction func nextButton(_ sender: Any) {
        if numberLabel.text == "1"{
            numberLabel.text = "2"
            animation2()
        } else if numberLabel.text == "2"{
            numberLabel.text = "3"
            animation3()
        } else if numberLabel.text == "3"{
            numberLabel.text = "4"
            animation4()
        } else if numberLabel.text == "4"{
            numberLabel.text = "5"
            animation5()
        } else if numberLabel.text == "5"{
            numberLabel.text = "6"
            animation6()
        } else if numberLabel.text == "6"{
            numberLabel.text = "7"
            animation7()
        } else if numberLabel.text == "7"{
            numberLabel.text = "1"
            animation1()
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberLabel.text = "1"
        squareView.backgroundColor = .red
        animation1()
    }
    
    func animation1(){
        self.squareView.layer.removeAllAnimations()
        UIView.animate(withDuration: 2, delay: 0, options: UIView.AnimationOptions.autoreverse, animations: {
            self.squareView.backgroundColor = .yellow
        }, completion: {_ in
            self.squareView.backgroundColor = .red
        })
    }

    func animation2(){
        UIView.animate(withDuration: 2, delay: 0, options: UIView.AnimationOptions.autoreverse, animations: {
            self.topConstraint.constant = 0
            self.rightConstraint.constant = 0
            self.view.layoutIfNeeded()
        }, completion: {_ in
            self.topConstraint.constant = 100
            self.rightConstraint.constant = 107
        })
    }
    
    func animation3(){
        UIView.animate(withDuration: 2, delay: 0, options: UIView.AnimationOptions.autoreverse, animations: {
            self.squareView.layer.cornerRadius = self.squareView.frame.width / 2
        }, completion: {_ in
            self.squareView.layer.cornerRadius = 0
        })
    }
    
    func animation4(){
        UIView.animate(withDuration: 2, delay: 0, options: UIView.AnimationOptions.autoreverse, animations: {
            self.squareView.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
        }, completion: {_ in
            self.squareView.transform = CGAffineTransform.identity
        })
    }
    
    func animation5(){
        UIView.animate(withDuration: 2, delay: 0, options: UIView.AnimationOptions.autoreverse, animations: {
            self.squareView.alpha = 0
        }, completion: {_ in
            self.squareView.alpha = 1
        })
    }
    
    func animation6(){
        self.squareView.layer.removeAllAnimations()
        UIView.animate(withDuration: 2, delay: 0, options: UIView.AnimationOptions.autoreverse, animations: {
            self.squareView.transform = CGAffineTransform(scaleX: 2, y: 2)
        }, completion: {_ in
            self.squareView.transform = CGAffineTransform.identity
        })
    }
    
    func animation7(){
        let rotate =  CABasicAnimation(keyPath: "transform.rotation.z")
        rotate.fromValue = 0
        rotate.toValue = NSNumber(value: Double.pi * 2)
        rotate.duration = 2
        rotate.repeatCount = Float.greatestFiniteMagnitude
        squareView.layer.add(rotate, forKey: "transform")
    }
    
    func animation8(){
        UIView.animate(withDuration: 2, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 1, options: UIView.AnimationOptions.repeat, animations: {
            self.squareView.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
        }, completion: {_ in
            
        })
    }
}

