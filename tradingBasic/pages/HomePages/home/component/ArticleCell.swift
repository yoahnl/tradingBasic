//
//  ArticleCell.swift
//  tradingBasic
//
//  Created by Yoahn Linard on 31/12/2020.
//

import UIKit

class ArticleCell: UICollectionViewCell
{
    static let identifier = "articleCell"
    
    @IBOutlet var title: UILabel!
    @IBOutlet var content: UILabel!
    @IBOutlet var illustration: UIImageView!
    @IBOutlet var source: UILabel!
    var url: String!
    override func awakeFromNib() {
        super.awakeFromNib()
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.goToWebSite))
        self.contentView.addGestureRecognizer(tap)
        self.contentView.layer.cornerRadius = 10
        self.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
        self.contentView.backgroundColor = #colorLiteral(red: 0.6642242074, green: 0.6642400622, blue: 0.6642315388, alpha: 0.5)
    }
    
    override func layoutSubviews()
    {
        super.layoutSubviews()
//        self.contentView.frame.inset(by: UIEdgeInsets(top: 20, left: 10, bottom: 20, right: 10))

    }
    
    @objc func goToWebSite()
    {
        if let url = URL(string: self.url) {
            UIApplication.shared.open(url)
        }
    }
    
    
    
}
