//
//  HomeViewController.swift
//  Alura Viagens
//
//  Created by Kamilla Mylena Teixeira Antunes on 23/03/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    private lazy var viagensTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    private lazy var headerView: HomeHeaderView = {
        let view = HomeHeaderView(
            frame: CGRect(
                x: 0,
                y: 0,
                width: viagensTableView.frame.size.width,
                height: 215))

        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viagensTableView.dataSource = self
        viagensTableView.tableHeaderView = headerView
        
        view.backgroundColor = Constants.Color.headerColor
        
        view.addSubview(viagensTableView)
        
        NSLayoutConstraint.activate([
            viagensTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            viagensTableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            viagensTableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            viagensTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
    }
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        cell.textLabel?.text = "Viagem \(indexPath.row)"
        
        return cell
    }
}
