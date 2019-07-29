//
//  ViewController.swift
//  BirthdayTracker
//
//  Created by Valeriy Chernobrovyi on 28/07/2019.
//  Copyright © 2019 Valeriy Chernobrovyi. All rights reserved.
//

import UIKit

class AddBirthdayViewController: UIViewController {
    
    // Это свойства для сопоставления текстовых полей со значениями
    @IBOutlet var firstNameTextField: UITextField!
    @IBOutlet var lastNameTextField: UITextField!
    @IBOutlet var birthdatePicker: UIDatePicker!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        birthdatePicker.maximumDate = Date()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveTapped(_ sender: UIBarButtonItem){
        print("Нажата кнопка сохранения!")
        
        let firstName = firstNameTextField.text ?? ""
        let lastName = lastNameTextField.text ?? ""
        let birthday = birthdatePicker.date
        
        let newBirthday = Birthday(firstName: firstName, lastName: lastName, birthday: birthday)
        
        print("Создана запись о дне рождения!")
        print("Имя: \(newBirthday.firstName),")
        print("Фамилия: \(newBirthday.lastName),")
        print("День рождения: \(newBirthday.birthdate).")
    }
    
    @IBAction func cancelTapped(_ sender: UIBarButtonItem){
        dismiss(animated: true, completion: nil)
        print("Окно представления закрыто!")
    }

}

