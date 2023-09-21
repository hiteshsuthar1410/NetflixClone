//
//  TitleTableViewCell.swift
//  Netflix clone
//
//  Created by Hitesh Suthar on 27/08/23.
//

import UIKit
import SDWebImage

class TitleTableViewCell: UITableViewCell {

    
    static let identifier = "TitleTableViewCell"
    
    private let playTitleButton = { () -> UIButton in
        let playButton = UIButton()
        playButton.setImage(UIImage(systemName: "play.circle"), for: .normal)
        playButton.translatesAutoresizingMaskIntoConstraints = false
        return playButton
    }()
    
    private let titleLabel = { () -> UILabel in
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 2
        return label
    }()
    
    
    private let titlePosterUIImageView = { () -> UIImageView in
       let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(titlePosterUIImageView)
        contentView.addSubview(titleLabel)
//        contentView.addSubview(playTitleButton)
        
        applyConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func applyConstraints() {
        let titlesPosterUIImageViewConstraints = [
            titlePosterUIImageView.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor),
            titlePosterUIImageView.widthAnchor.constraint(equalToConstant: 90),
            titlePosterUIImageView.heightAnchor.constraint(equalToConstant: 140)
        ]
        
        let titleLabelContraints = [
            titleLabel.leadingAnchor.constraint(equalTo: titlePosterUIImageView.trailingAnchor, constant: 12),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor),
            titleLabel.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor , constant: 6)
        ]
        
//        let playButtonConstraints = [
//            playTitleButton.leadingAnchor.constraint(equalTo: titleLabel.trailingAnchor, constant: 12),
//            playTitleButton.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor),
//            playTitleButton.widthAnchor.constraint(equalToConstant: 40),
//            playTitleButton.heightAnchor.constraint(equalToConstant: 80)
//        ]
        
        NSLayoutConstraint.activate(titlesPosterUIImageViewConstraints)
        NSLayoutConstraint.activate(titleLabelContraints)
//        NSLayoutConstraint.activate(playButtonConstraints)
        
    }
    
    public func configure(with model: TitleViewModel) {
        guard let url = URL(string: "https://image.tmdb.org/t/p/w500\(model.posterURL)") else { return }
        titlePosterUIImageView.sd_setImage(with: url)
        titleLabel.text = model.titleName
    }
}
