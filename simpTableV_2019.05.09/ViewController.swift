//
//  ViewController.swift
//  simpTableV_2019.05.09
//
//  Created by dit08 on 2019. 5. 9..
//  Copyright © 2019년 dit. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableV: UITableView!
    
    var animals = ["Cat", "Dag", "Pig", "Whale", "Bird"]
    var detailAnimals = ["고양이", "개", "돼지", "고래", "새"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableV.dataSource = self
        
        self.title = "동물농장"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableV.dequeueReusableCell(withIdentifier: "RE", for: indexPath)
        let row = indexPath.row
        
        cell.textLabel?.text = animals[row]
        cell.detailTextLabel?.text = animals[row]
        
        cell.imageView?.image = UIImage(named: animals[row])
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goAdd" {
            let addVC = segue.destination as! AddViewController
            //addVC.testData = self.title
            addVC.testData = animals[0]
            addVC.imgData = "Cat"
            addVC.nameData = detailAnimals[0]
        }
        else if segue.identifier == "goDetail"{
            
        }
        else{
            print("segue error")
        }
    }


}

