//
//  HomeHeaderView.swift
//  Alura Viagens
//
//  Created by Kamilla Mylena Teixeira Antunes on 23/03/23.
//

import UIKit

final class HomeHeaderView: UIView {
    
    private lazy var headerView: UIView = {
        let view = UIView()
        
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = Constants.Color.headerColor
        view.layer.cornerRadius = 500
        view.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
        return view
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = Constants.Font.headerFont
        label.text = "Alura Viagens"
        label.textAlignment = .left
        label.textColor = UIColor.white
        
        return label
    }()
    
    private lazy var bannerView: UIView = {
        let view = UIView()
        
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = Constants.Color.bannerColor
        
        return view
    }()
    
    private lazy var bannerImageView: UIImageView = {
        let imageView = UIImageView()
        let image = UIImage(named: "ferias")
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = image
        imageView.contentMode = .scaleToFill
        
        return imageView
    }()
    
    private lazy var bannerStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [bannerView, bannerImageView])
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.layer.cornerRadius = 10
        stackView.layer.masksToBounds = true
        
        return stackView
    }()
    
    private lazy var bannerTitleLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = Constants.Font.bannerTitleFont
        label.text = "Aproveite o verão, com:"
        label.textAlignment = .left
        label.textColor = .white
        label.numberOfLines = 0
        
        return label
    }()
    
    private lazy var bannerSubtitleLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = Constants.Font.bannerSubtitleFont
        label.text = "Ofertas exclusivas, somente no nosso app"
        label.textAlignment = .left
        label.textColor = .white
        label.numberOfLines = 0
        
        return label
    }()
    
    private lazy var bannerLabelsStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [bannerTitleLabel, bannerSubtitleLabel])
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        stackView.spacing = 5
        
        return stackView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func configure() {
        addSubview(headerView)
        headerView.addSubview(titleLabel)
        
        bannerView.addSubview(bannerLabelsStackView)
        
        addSubview(bannerStackView)
        
        setupContraints()
    }
    
    private func setupContraints() {
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: topAnchor),
            headerView.widthAnchor.constraint(equalToConstant: 1000),
            headerView.centerXAnchor.constraint(equalTo: centerXAnchor),
            headerView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            titleLabel.topAnchor.constraint(equalTo: headerView.topAnchor, constant: 16),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            
            bannerStackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            bannerStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            bannerStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            bannerStackView.heightAnchor.constraint(equalToConstant: 130),
            
            bannerLabelsStackView.topAnchor.constraint(equalTo: bannerView.topAnchor, constant: 14),
            bannerLabelsStackView.leadingAnchor.constraint(equalTo: bannerView.leadingAnchor, constant: 16),
            bannerLabelsStackView.bottomAnchor.constraint(equalTo: bannerView.bottomAnchor, constant: -14),
            bannerLabelsStackView.trailingAnchor.constraint(equalTo: bannerView.trailingAnchor, constant: -16)
        ])
    }
}
