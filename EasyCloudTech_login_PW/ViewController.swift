//
//  ViewController.swift
//  EasyCloudTech_login_PW
//
//  Created by PW on 7/15/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var userPaaswordField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    
    var radius = 15
   
    
    @IBOutlet var loadingView: UIView!
    @IBOutlet weak var shineLine: threePointLine!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userTextField.layer.cornerRadius = CGFloat(radius)
        userPaaswordField.layer.cornerRadius = CGFloat(radius)
        signInButton.layer.cornerRadius = CGFloat(radius)
        

        
        showLoadingScreen()
        
        func showLoadingScreen(){view.addSubview(loadingView)
            
            loadingView.center = view.center
            loadingView.bounds.size.width = view.bounds.width
            loadingView.bounds.size.height = view.bounds.height
            loadingView.alpha = 0
            
            UIView.animate(withDuration: 0.5, delay: 0, options: [], animations: { self.loadingView.alpha = 1 }){ (success) in animateShineView()
                }
        }
        
        func animateShineView(){
            UIView.animate(withDuration: 1, delay: 0.2, options: [], animations: { self.shineLine.transform = CGAffineTransform(translationX: 0, y: -900)},  completion: { (success) in hideLoadingScreen()
                })
            }
        
         func hideLoadingScreen() {
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: [],  animations: { self.loadingView.transform = CGAffineTransform(translationX: 0, y: 10)}) { (success) in UIView.animate(withDuration: 0.3, animations: {
                self.loadingView.transform = CGAffineTransform(translationX: 0, y: -900)
            })}
        }
        
        
        }
}

