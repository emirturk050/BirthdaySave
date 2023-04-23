//
//  ViewController.swift
//  birthdaynote
//
//  Created by Emir Türk on 27.01.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var birthday: UITextField!
    @IBOutlet weak var namelabel: UILabel!
    @IBOutlet weak var birthdaylabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let kayıtlıİsim = UserDefaults.standard.object(forKey: "savedName")
        let kayıtlıDoğum = UserDefaults.standard.object(forKey: "savedBirthday")
        
        if let userName = kayıtlıİsim  as? String {
            namelabel.text = userName
        }
        if let userBirthday = kayıtlıDoğum as? String {
            birthdaylabel.text = userBirthday
        }
    }

    @IBAction func savebutton(_ sender: Any) {
        
        UserDefaults.standard.set(name.text!, forKey: "savedName" )
        UserDefaults.standard.set(birthday.text!, forKey: "savedBirthday" )
        namelabel.text = "Name: \(name.text!)"
        birthdaylabel.text = "Birthday: \(birthday.text!)"
        }
    
    
    @IBAction func deletebutton(_ sender: Any) {
        let kayıtlıİsim = UserDefaults.standard.object(forKey: "savedName")
        let kayıtlıDoğum = UserDefaults.standard.object(forKey: "savedBirthday")
        
        if  (kayıtlıİsim as? String ) != nil {
            UserDefaults.standard.removeObject(forKey: "savedName")
            namelabel.text = "Name:"
            
        }
        if (kayıtlıDoğum as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "savedBirthday")
            birthdaylabel.text = "Birthday:"

        }
        
        
    }
    
}

