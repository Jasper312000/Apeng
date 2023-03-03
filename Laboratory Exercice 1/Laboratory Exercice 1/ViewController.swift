//
//  ViewController.swift
//  Laboratory Exercice 1
//
//  Created by student on 3/3/23.
//

import UIKit

class ViewController: UIViewController {
    
    struct Restaurant {
        var imageName: String
        var name: String
        var isHidden: Bool = false
        var isHorizontal: Bool = false
    }
    
    var restaurants = [
        Restaurant(imageName: "jollibeeImage", name: "Jolibee"),
        Restaurant(imageName: "mcdoPic", name: "McDonald's"),
        Restaurant(imageName: "Wendys", name: "Wendy's"),
        Restaurant(imageName: "tacoBelll", name: "Taco Bell"),
        Restaurant(imageName: "kFc", name: "KFC"),
        Restaurant(imageName: "burgerKing", name: "Burger King"),
    ]
    

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.viewDidLoad()
    }


    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for:indexPath) as! CellTableViewCell
        let Restaurant = restaurants[indexPath.row]
            cell.imageName.image = UIImage(named: Restaurant.imageName)
            cell.lblName.text = Restaurant.name
            return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        let Restaurant = restaurants[indexPath.row]
        vc.Image = UIImage(named: Restaurant.imageName)!
        vc.name = Restaurant.name
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
