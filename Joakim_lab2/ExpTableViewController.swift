//
//  ExpTableTableViewController.swift
//  Joakim_lab2
//
//  Created by Joakim Chan on 2019-12-07.
//  Copyright © 2019 Joakim Chan. All rights reserved.
//

import UIKit

class ExpTableViewController: UITableViewController {

    var workExp: [work] = []
        var education: [Education] = []
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            workExp = [work(name: "Mcdonald", imageName: "MC"), work(name: "MAX", imageName: "MAX"),
                       work(name: "Burgerking", imageName: "BK")]
            education = [Education(name: "Jönköping universitet", imageName: "JU")]
            
        }
        
        override func numberOfSections(in tableView: UITableView) -> Int {
            return 2
        }
            
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                
            if section == 0{
                return workExp.count
            }else {
                return education.count
            }
                
        }
            
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            if let cell = tableView.dequeueReusableCell(withIdentifier: "cell" ) as? EXPTableViewCell{
                if(indexPath.section == 0){
                    let exp = workExp[indexPath.row]
                    cell.LabelCell.text = exp.name
                    cell.ImageCell.image = UIImage (named: exp.imageName)
                }else{
                    let exp = education[indexPath.row]
                    cell.LabelCell.text = exp.name
                    cell.ImageCell.image = UIImage (named: exp.imageName)
                }
                return cell
            }else{
                return UITableViewCell()
            }
            
        }
            
        override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
                
            if section == 0{
                return "Work Experience"
            }else{
                return "Education"
            }
            
        }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
            if let destination = segue.destination as? ExpDetailViewController {
                if let indexPath = sender as? IndexPath{
                    if (indexPath.section == 0){
                        let exp = workExp[indexPath.row]
                        destination.working = exp
                    }else{
                        let exp = education[indexPath.row]
                        destination.edu = exp
                    }
                }
            }
        }
        
        override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            performSegue(withIdentifier: "segue", sender: indexPath)
        }
        
        
    }

