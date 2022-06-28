//
//  ShadowImageView.swift
//  LearnIOS
//
//  Created by Clinton on 6/28/22.
//

import UIKit

class ShadowImageView: UIView {
    var image: UIImage? {
        didSet {
            imageView.image = image
        }
    }
    
    private lazy var imageView: UIImageView = {
       let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.layer.cornerRadius = 20
        image.clipsToBounds = true
        return image
    }()
    
    private lazy var baseView: UIView = {
       let base = UIView()
        base.translatesAutoresizingMaskIntoConstraints = false
        base.backgroundColor = .clear
        base.layer.shadowColor = UIColor.black.cgColor
        base.layer.shadowOffset = CGSize(width: 5, height: 5)
        base.layer.shadowOpacity = 0.7
        base.layer.shadowRadius = 10.0
        return base
    }()
    
    init() {
        super.init(frame: .zero)
        
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        addSubview(baseView)
        baseView.addSubview(imageView)
        
        setupConstraints()
    }
    
    func setupConstraints() {
        [baseView, imageView].forEach { (v) in
            NSLayoutConstraint.activate ([
                v.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
                v.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
                v.topAnchor.constraint(equalTo: topAnchor, constant: 16),
                v.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16)
            ])
        }
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        baseView.layer.shadowPath = UIBezierPath(roundedRect: baseView.bounds, cornerRadius: 10).cgPath
        baseView.layer.shouldRasterize = true
        baseView.layer.rasterizationScale = UIScreen.main.scale
    }
}


