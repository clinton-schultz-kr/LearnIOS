//
//  ViewController.swift
//  LearnIOS
//
//  Created by Clinton on 6/27/22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        NetworkManager.shared.getNews { (news) in
            guard let news = news else { return }
            print(news[0].title)
            print(news[0].author)
        }
    }
}

