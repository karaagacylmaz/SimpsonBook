//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Yılmaz Karaağaç on 1/9/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var simpsonArray = [Simpson]()
    var selectedSimpson: Simpson?
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        //Simpson Data
        let homer = Simpson("Homer Simpson","Nuclear Safety1",UIImage(named: "HomerSimpson")!)
        let bart = Simpson("Bart Simpson","Nuclear Safety2", UIImage(named: "BartSimpson")!)
        let maggie = Simpson("Maggie Simpson","Nuclear Safety3", UIImage(named: "MaggieSimpson")!)
        let marge = Simpson("Marge Simpson","Nuclear Safety4", UIImage(named: "MargeSimpson")!)
        let lisa = Simpson("Lisa Simpson","Nuclear Safety5", UIImage(named: "LisaSimpson")!)
        
        simpsonArray.append(homer)
        simpsonArray.append(bart)
        simpsonArray.append(maggie)
        simpsonArray.append(marge)
        simpsonArray.append(lisa)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return simpsonArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = simpsonArray[indexPath.row].fullName
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedSimpson = simpsonArray[indexPath.row]
        self.performSegue(withIdentifier: "toDetailVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVC" {
            let destinationVC = segue.destination as! DetailViewController
            destinationVC.selectedSimpson = selectedSimpson
        }
    }

}

