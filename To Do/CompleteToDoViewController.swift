//
//  CompleteToDoViewController.swift
//  To Do
//
//  Created by Vanessa Zhang on 8/3/21.
//

import UIKit

class CompleteToDoViewController: UIViewController {

    @IBOutlet weak var toDoTitle: UILabel!
    var previousVC = ToDoTableViewController()
    var selectedToDo : ToDoCD?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        toDoTitle.text = selectedToDo?.name
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func completedButton(_ sender: UIButton) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
           if let theToDo = selectedToDo {
             context.delete(theToDo)
             navigationController?.popViewController(animated: true)
           }
         }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
