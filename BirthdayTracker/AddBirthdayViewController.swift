//
//  Created by Valeriy Chernobrovyi on 28/07/2019.
//  Copyright © 2019 Valeriy Chernobrovyi. All rights reserved.
//

import UIKit

protocol AddBirthdayViewControllerDelegate {
    func addBirthdayViewController(_ addBirthdayViewController: AddBirthdayViewController, didAddBirthday birthday: Birthday)
}

class AddBirthdayViewController: UIViewController {
    
    // Это свойства для сопоставления текстовых полей со значениями
    @IBOutlet var firstNameTextField: UITextField!
    @IBOutlet var lastNameTextField: UITextField!
    @IBOutlet var birthdatePicker: UIDatePicker!
    
    var delegate: AddBirthdayViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        birthdatePicker.maximumDate = Date()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveTapped(_ sender: UIBarButtonItem){
        print("Нажата кнопка сохранения!")
        
        let firstName = firstNameTextField.text ?? ""
        let lastName = lastNameTextField.text ?? ""
        let birthdate = birthdatePicker.date
        
        let newBirthday = Birthday(firstName: firstName, lastName: lastName, birthdate: birthdate)
        delegate?.addBirthdayViewController(self, didAddBirthday: newBirthday)
        dismiss(animated: true, completion: nil)
        
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

