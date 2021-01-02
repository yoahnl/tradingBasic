//
//  HomePageController.swift
//  tradingBasic
//
//  Created by Yoahn Linard on 14/12/2020.
//

import UIKit

class HomePageController: UIViewController, UICollectionViewDataSource
{

    

    var header: UIView?
    var profilePicture: UIImageView?
    var welcomeMessage: UILabel?
    let news: NewsService = NewsService()
    var articles: [Article]! = []
    var data: [String]! = []
    var refreshController: UIRefreshControl?
    @IBOutlet var tableView: UICollectionView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.initUI()
        self.getNews()
        self.checkIfUserIsLoaded()
        

    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.articles.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = self.tableView.dequeueReusableCell(withReuseIdentifier: ArticleCell.identifier, for: indexPath) as! ArticleCell
                if !articles.isEmpty
                {
                    cell.title.text = articles[indexPath.row].title
                    cell.content.text = articles[indexPath.row].content
                    cell.illustration.url(articles[indexPath.row].urlToImage)
                    cell.url = articles[indexPath.row].url
                    if let source = articles[indexPath.row].source?.name {
                        cell.source.text = "Source: \(source)"
                    }
                }
        
                return cell
    }
}
