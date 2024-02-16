import UIKit

final class ResultViewController: UIViewController {

    @IBOutlet weak var animalTypeLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var answers: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.hidesBackButton = true
        
        let maxAnimal = getMaxAnimal()
        updateUI(with: maxAnimal)
    }
    
    @IBAction func doneButtonAction(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
}

private extension ResultViewController {
    func getMaxAnimal() -> Animal? {
        Dictionary(grouping: answers, by: { $0.animal }).sorted(by: {$0.value.count > $1.value.count}).first?.key
    }
    
    func updateUI(with animal: Animal?) {
        animalTypeLabel.text = "Вы - \(animal?.rawValue ?? "🐙" )!"
        descriptionLabel.text = animal?.definition ?? "Вы осьминог"
    }
}
