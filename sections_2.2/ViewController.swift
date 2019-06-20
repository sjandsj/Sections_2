//
//  ViewController.swift
//  sections_2.2
//
//  Created by mac on 19/06/19.
//  Copyright © 2019 gammastack. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    struct forObjects {
        var sectionName: String!
        var sectionObject: [String]!
    }
    
    var objectArray = [forObjects]()
    let cellItems = ["A": ["Affenpoo", "Affenpug", "Affenshire", "Affenwich", "Afghan Collie", "Afghan Hound"], "B": ["Bagle Hound", "Boxer"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sortingOfDictionary()
    }

    func sortingOfDictionary() {
        let ordered = cellItems.sorted {$0.0 < $1.0}
        for (key, value) in ordered {
            objectArray.append(forObjects(sectionName: key, sectionObject: value))
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {

    func numberOfSections(in tableView: UITableView) -> Int {
        return objectArray.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objectArray[section].sectionObject.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.label.text = objectArray[indexPath.section].sectionObject[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return objectArray[section].sectionName
    }
}













