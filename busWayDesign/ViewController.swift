//
//  ViewController.swift
//  busWayDesign
//
//  Created by Apple on 20/11/22.
//

import UIKit
class ViewController: UIViewController {
    @IBOutlet var tableView: UITableView!
    var arr = [Int]()
    @IBOutlet var lblSchedule: UILabel!
    @IBOutlet var view1: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        registerNIB()
        tableView.separatorStyle = .none
       view1.backgroundColor = .darkGray
        lblSchedule.textColor = .white
        view1.layer.cornerRadius = 40
        view1.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        for i in 1...10{
            arr.append(i)
        }
    }
    func registerNIB(){
        let nibname = UINib(nibName: "TableViewCell", bundle: nil)
        tableView.register(nibname, forCellReuseIdentifier: "cell")
    
        
    }
}

extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Cell = self.tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
    
        Cell.label.text = "13 Uppre IndiraNagar"
        Cell.view.layer.cornerRadius = 10
        //Cell.layer.borderWidth = 2
        
        Cell.layer.borderColor = UIColor.white.cgColor
       // Cell.layer.cornerCurve = .circular
        Cell.progressBar = UIProgressView(progressViewStyle: .default)
        Cell.directionBtn.layer.cornerRadius = 10
        Cell.ticketBtn.layer.cornerRadius = 10
        

        return Cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            tableView.beginUpdates()
            arr.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            tableView.endUpdates()
        }
    }
    
}
extension ViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        133
    }
}

