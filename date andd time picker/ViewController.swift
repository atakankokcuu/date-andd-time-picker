//
//  ViewController.swift
//  date andd time picker
//
//  Created by atakan kökçü on 18.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var saattextfield: UITextField!
    
    @IBOutlet weak var tarihtextfield: UITextField!
    var datepicker : UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        datepicker = UIDatePicker()
        datepicker?.datePickerMode = .date
        tarihtextfield.inputView = datepicker
        
        datepicker?.addTarget(self, action: #selector(self.tarihGoster(datepicker:)), for: .valueChanged)
        
        
    }
    @objc func tarihGoster (datepicker :UIDatePicker){
        let dateformater = DateFormatter()
        dateformater.dateFormat = "MM/dd/yyyy"
        let alinantarih = dateformater.string(from: datepicker.date)
        print(datepicker.date)
        tarihtextfield.text = alinantarih
        
    }
    
}
