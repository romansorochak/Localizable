//
//  ViewController.swift
//  Localizable
//
//  Created by Roman Sorochak on 6/23/17.
//  Copyright © 2017 MagicLab. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    private func setupUI() {
        label.text = "main_page_language".localized
        imageView.image = "flag".localizedImage
        button.setTitle(
            "main_page_change_language".localized,
            for: .normal
        )
    }
    
    @IBAction func changeLanguage(_ sender: Any) {
        let alert = UIAlertController(
            title: "alert_change_language_title".localized,
            message: nil,
            preferredStyle: .actionSheet
        )
        
        func addActionLanguage(language: Language) {
            alert.addAction(
                UIAlertAction(
                    title: language.rawValue.localized,
                    style: UIAlertActionStyle.default,
                    handler: { _ in
                        Language.language = language
                })
            )
        }
        addActionLanguage(language: Language.english)
        addActionLanguage(language: Language.ukrainian)
        addActionLanguage(language: Language.arabic)
        
        alert.addAction(
            UIAlertAction(
                title: "alert_cancel".localized,
                style: UIAlertActionStyle.cancel,
                handler: nil
            )
        )
        present(alert, animated: true, completion: nil)
    }
}

