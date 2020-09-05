

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var blueValueLabel: UILabel!
    @IBOutlet weak var greenValueLabel: UILabel!
    @IBOutlet weak var redValueLabel: UILabel!
   
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var redSlider: UISlider!
    
    
    let maxColorValue: Float = 255
    let minColorValue: Float = 0
    var mediumColorValue: Float = {
        return Float(maxColorValue - minColorValue) / 2.0 + minColorValue
    }
      
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupFoundaryLabel(for: redSlider)
        setupFoundaryLabel(for: greenSlider)
        setupFoundaryLabel(for: blueSlider)
        updateSlidersValue(mediumColorValue)
        updateSliderLabels()
        updateColorView()
        
        
    }

    @IBAction func minPressed(_ sender: Any) {
        updateSlidersValue(minColorValue)
        updateSliderLabels()
        updateColorView()
    }
    
    @IBAction func mediumPressed(_ sender: Any) {
        updateSlidersValue(mediumColorValue)
        updateSliderLabels()
        updateColorView()
    }
    
    @IBAction func maxPressed(_ sender: Any) {
        updateSlidersValue(maxColorValue)
        updateSliderLabels()
        updateColorView()
    }
    @IBAction func redSliderChanget(_ sender: Any) {
        updateSliderLabels()
        updateColorView()
    }
    
    @IBAction func greenSliderChanget(_ sender: Any) {
        updateSliderLabels()
        updateColorView()
    }
    
    @IBAction func blueSliderChanget(_ sender: Any) {
        updateSliderLabels()
        updateColorView()
    }
    func updateColorView() {
        let redValue = CGFloat(redSlider.value) / CGFloat(maxColorValue)
        let greenValue = CGFloat(greenSlider.value) / CGFloat(maxColorValue)
        let blueValue = CGFloat(blueSlider.value) / CGFloat(maxColorValue)
        colorView.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
    }
    func updateSliderLabels() {
        blueValueLabel.text = "\(blueSlider.value)"
        greenValueLabel.text = "\(greenSlider.value)"
        redValueLabel.text = "\(redSlider.value)"
    }
    func updateSlidersValue(_ value: Float) {
        blueSlider.value = value
        greenSlider.value = value
        redSlider.value = value
    }
    func setupFoundaryLabel(for slider: UISlider) {
        slider.minimumValue = minColorValue
        slider.maximumValue = maxColorValue
    }
    
}

