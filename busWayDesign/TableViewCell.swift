//
//  TableViewCell.swift
//  busWayDesign
//
//  Created by Apple on 20/11/22.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var view: UIView!
    @IBOutlet var label: UILabel!
    @IBOutlet var progressBar: UIProgressView!
    
    @IBOutlet var directionBtn: UIButton!
    
    @IBOutlet var ticketBtn: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        progressBar.progress = 1
        progressBar.progressViewStyle = .default
        progressCheck()
    }
    func progressCheck(){
        for var i in 1...10{
            i += 2
            progressBar.progress = Float(i)
        }
       
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}
