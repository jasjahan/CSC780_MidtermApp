import UIKit

struct Store {
    var elements: [String] = ["Buy milk", "Feed cat", "Goat"]
}

//struct Store {
//    let elements: String
//}

class TodoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
//    var elementItems : [Store] = [Store(elements: "Buy milk"),
//                                          Store(elements: "Feed Cat")]
    
    let store = Store()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self 
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
//        let row = indexPath.row
//        let a = elementItems[row]
//        let name = a.elements
//        cell.textLabel?.text = name
        
        cell.textLabel?.text = store.elements[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return store.elements.count
//        return elementItems.count
    }

}
