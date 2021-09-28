//
//  SearchNewsViewController.swift
//  Search News
//
//  Created by Siva Rama Lingam S on 9/28/21.
//

import UIKit

class SearchNewsViewController: UIViewController {
 
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var newsTableView: UITableView!
    
    let cellID = "SearchNewsCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }

}

extension SearchNewsViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as? SearchNewsTableViewCell else {
            return UITableViewCell(style: .subtitle, reuseIdentifier: cellID)
        }
        return cell
    }
}
