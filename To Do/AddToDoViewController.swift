//
//  AddToDoViewController.swift
//  To Do
//
//  Created by Vanessa Zhang on 8/2/21.
//

import UIKit

class AddToDoViewController: UIViewController {

    var previousVC = ToDoTableViewController()
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
   @IBAction func addTapped(_ sender: Any) {

    if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
        let toDo = ToDoCD(entity: ToDoCD.entity(), insertInto: context)
        if let titleText = textField.text {
            toDo.name = titleText
            toDo.important = importantSwitch.isOn
        }
        
        try? context.save()
        
        navigationController?.popViewController(animated: true)
    }
    
    /*  let toDo = ToDo ()
    
        if let titleText = textField.text {
            toDo.name = titleText
            toDo.important = importantSwitch.isOn
        }
        previousVC.toDos.append(toDo)
        previousVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
 */
    }
    
   /* // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Pass the selected object to the new view controller.
    }
*/

}
