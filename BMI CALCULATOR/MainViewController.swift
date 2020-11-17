//
//  ViewController.swift
//  BMI CALCULATOR
//
//  Created by NguyenVu on 11/2/20.
//

import UIKit

class MainViewController: UIViewController {
    
    let minHeight: Float = 50
    let maxHeight: Float = 250
    let minWeight: Int = 1
    let maxWeight: Int = 200
    let minAge: Int = 1
    let maxAge: Int = 120
    
    var height: Float = 150
    var weight: Int = 50
    var age: Int = 20
    var isMale: Bool = true
    var timer: Timer!
    var BMI: Float = 25.7326
    
    let containerView: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.11, green: 0.13, blue: 0.21, alpha: 1.00)
        return view
    }()
    
    let bmiLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "BMI CALCULATOR"
        label.textColor = UIColor.white
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    let lineView: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5)
        return view
    }()
    
    let maleView: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.27, alpha: 1.00)
        return view
    }()
    
    let femaleView: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.27, alpha: 1.00)
        return view
    }()
    
    let maleImage: UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "male")
        return imageView
    }()
    
    let femaleImage: UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "female")
        return imageView
    }()
    
    let maleLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "MALE"
        label.textColor = UIColor(red: 0.45, green: 0.46, blue: 0.51, alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 15)
        return label
    }()
    
    let femaleLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "FEMALE"
        label.textColor = UIColor(red: 0.45, green: 0.46, blue: 0.51, alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 15)
        return label
    }()
    
    let heightView: UIView = {
        let view = UIView()
         view.translatesAutoresizingMaskIntoConstraints = false
         view.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.27, alpha: 1.00)
         return view
    }()
    
    let heightLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "HEIGHT"
        label.textColor = UIColor(red: 0.45, green: 0.46, blue: 0.51, alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 15)
        return label
    }()
    
    let heightValueLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        //label.text = "150 cm"
        label.textColor = UIColor.white
        label.font = UIFont.boldSystemFont(ofSize: 30)
        return label
    }()
    
    let slider: UISlider = {
       let slider = UISlider()
        slider.translatesAutoresizingMaskIntoConstraints = false
        slider.tintColor = UIColor(red: 0.57, green: 0.34, blue: 0.43, alpha: 1.00)
        slider.maximumValue = 300
        slider.minimumValue = 1
        slider.value = 150
        return slider
    }()
    
    let weightView: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.27, alpha: 1.00)
        return view
    }()
    
    let ageView: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.27, alpha: 1.00)
        return view
    }()
    
    let weightLabel: UILabel = {
        let label = UILabel()
         label.translatesAutoresizingMaskIntoConstraints = false
         label.text = "WEIGHT"
         label.textColor = UIColor(red: 0.45, green: 0.46, blue: 0.51, alpha: 1.00)
         label.font = UIFont.boldSystemFont(ofSize: 15)
         return label
    }()
    
    let ageLabel: UILabel = {
        let label = UILabel()
         label.translatesAutoresizingMaskIntoConstraints = false
         label.text = "AGE"
         label.textColor = UIColor(red: 0.45, green: 0.46, blue: 0.51, alpha: 1.00)
         label.font = UIFont.boldSystemFont(ofSize: 15)
         return label
    }()
    
    let weightValueLabel: UILabel = {
        let label = UILabel()
         label.translatesAutoresizingMaskIntoConstraints = false
         //label.text = "50"
         label.textColor = UIColor.white
         label.font = UIFont.boldSystemFont(ofSize: 30)
         return label
    }()
    
    let ageValueLabel: UILabel = {
        let label = UILabel()
         label.translatesAutoresizingMaskIntoConstraints = false
         //label.text = "20"
         label.textColor = UIColor.white
         label.font = UIFont.boldSystemFont(ofSize: 30)
         return label
    }()
    
    let weightPlusImageView: UIImageView = {
        let button = UIImageView()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.image = UIImage(named: "plus")
        return button
    }()
    
    let weightMinusImageView: UIImageView = {
        let button = UIImageView()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.image = UIImage(named: "minus")
        return button
    }()
    
    let agePlusImageView: UIImageView = {
        let button = UIImageView()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.image = UIImage(named: "plus")
        return button
    }()
    
    let ageMinusImageView: UIImageView = {
        let button = UIImageView()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.image = UIImage(named: "minus")
        return button
    }()
    
//    let calButton: UIButton = {
//        let button = UIButton()
//        button.translatesAutoresizingMaskIntoConstraints = false
//        button.backgroundColor = UIColor(red: 0.91, green: 0.24, blue: 0.40, alpha: 1.00)
//        button.setTitle("CALCULATE", for: .normal)
//        button.setTitleColor(UIColor.white, for: .normal)
//        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 23)
//        return button
//    }()

    let calButton: CustomButton = {
        let button = CustomButton("CALCULATE", UIColor(red: 0.91, green: 0.24, blue: 0.40, alpha: 1.00), UIFont.boldSystemFont(ofSize: 23))
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(onCalButton), for: .touchUpInside)
        return button
    }()
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addSubviews()
        setupLayout()
        
        slider.addTarget(self, action: #selector(changeSlider), for: .valueChanged)
        
        let tapPlusWeightGesture = UITapGestureRecognizer(target: self, action: #selector(countPlusWeight))
        let tapMinusWeightGesture = UITapGestureRecognizer(target: self, action: #selector(countMinusWeight))
        weightPlusImageView.addGestureRecognizer(tapPlusWeightGesture)
        weightMinusImageView.addGestureRecognizer(tapMinusWeightGesture)
        weightPlusImageView.isUserInteractionEnabled = true
        weightMinusImageView.isUserInteractionEnabled = true
        
        let tapPlusAgeGesture = UITapGestureRecognizer(target: self, action: #selector(countPlusAge))
        let tapMinusAgeGesture = UITapGestureRecognizer(target: self, action: #selector(countMinusAge))
        agePlusImageView.addGestureRecognizer(tapPlusAgeGesture)
        ageMinusImageView.addGestureRecognizer(tapMinusAgeGesture)
        agePlusImageView.isUserInteractionEnabled = true
        ageMinusImageView.isUserInteractionEnabled = true
        
        let tapMaleGesture = UITapGestureRecognizer(target: self, action: #selector(onTapMale))
        maleView.addGestureRecognizer(tapMaleGesture)
        let tapFemaleGesture = UITapGestureRecognizer(target: self, action: #selector(onTapFemale))
        femaleView.addGestureRecognizer(tapFemaleGesture)
        
//        let tapLongPressPlusWeightGesture = UITapGestureRecognizer(target: self, action: #selector(onLongPressPlusWeight(_:)))
//        weightPlusImageView.addGestureRecognizer(tapLongPressPlusWeightGesture)
//        weightPlusImageView.isUserInteractionEnabled = true
//        let tapLongPressMinusWeightGesture = UITapGestureRecognizer(target: self, action: #selector(onLongPressMinusWeight(_:)))
//        weightMinusImageView.addGestureRecognizer(tapLongPressMinusWeightGesture)
//        weightMinusImageView.isUserInteractionEnabled = true
//
//        let tapLongPressPlusAgeGesture = UITapGestureRecognizer(target: self, action: #selector(onLongPressPlusAge(_:)))
//        agePlusImageView.addGestureRecognizer(tapLongPressPlusAgeGesture)
//        agePlusImageView.isUserInteractionEnabled = true
//        let tapLongPressMinusAgeGesture = UITapGestureRecognizer(target: self, action: #selector(onLongPressMinusAge(_:)))
//        agePlusImageView.addGestureRecognizer(tapLongPressMinusAgeGesture)
//        ageMinusImageView.isUserInteractionEnabled = true
        
        heightValueLabel.text = "\(height) cm"
        weightValueLabel.text = "\(weight)"
        ageValueLabel.text = "\(age)"
    }

    func addSubviews() {
        view.addSubview(containerView)
        containerView.addSubview(bmiLabel)
        containerView.addSubview(lineView)
        containerView.addSubview(maleView)
        containerView.addSubview(femaleView)
        maleView.addSubview(maleImage)
        femaleView.addSubview(femaleImage)
        maleImage.addSubview(maleLabel)
        femaleImage.addSubview(femaleLabel)
        containerView.addSubview(heightView)
        heightView.addSubview(heightLabel)
        heightView.addSubview(heightValueLabel)
        heightView.addSubview(slider)
        containerView.addSubview(weightView)
        containerView.addSubview(ageView)
        weightView.addSubview(weightLabel)
        ageView.addSubview(ageLabel)
        weightView.addSubview(weightValueLabel)
        ageView.addSubview(ageValueLabel)
        weightView.addSubview(weightPlusImageView)
        weightView.addSubview(weightMinusImageView)
        ageView.addSubview(agePlusImageView)
        ageView.addSubview(ageMinusImageView)
        containerView.addSubview(calButton)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        maleView.layer.cornerRadius = 10
        maleView.clipsToBounds = true
        femaleView.layer.cornerRadius = 10
        maleView.clipsToBounds = true
        heightView.layer.cornerRadius = 10
        heightView.clipsToBounds = true
        weightView.layer.cornerRadius = 10
        weightView.clipsToBounds = true
        ageView.layer.cornerRadius = 10
        ageView.clipsToBounds = true
//        calButton.layer.cornerRadius = 10
//        calButton.clipsToBounds = true
    }
    
    func setupLayout() {
        containerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        
        bmiLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 64).isActive = true
        bmiLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        
        lineView.topAnchor.constraint(equalTo: bmiLabel.bottomAnchor, constant: 20).isActive = true
        lineView.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 1).isActive = true
        lineView.heightAnchor.constraint(equalToConstant: 3).isActive = true
        
        maleView.topAnchor.constraint(equalTo: lineView.bottomAnchor, constant: 15).isActive = true
        maleView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10).isActive = true
        maleView.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.44).isActive = true
        maleView.heightAnchor.constraint(equalTo: maleView.widthAnchor, multiplier: 1.1).isActive = true
        
        femaleView.topAnchor.constraint(equalTo: lineView.bottomAnchor, constant: 15).isActive = true
        femaleView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10).isActive = true
        femaleView.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.44).isActive = true
        femaleView.heightAnchor.constraint(equalTo: femaleView.widthAnchor, multiplier: 1.1).isActive = true
        
        maleImage.centerYAnchor.constraint(equalTo: maleView.centerYAnchor, constant: -20).isActive = true
        maleImage.centerXAnchor.constraint(equalTo: maleView.centerXAnchor, constant: 0).isActive = true
        maleImage.widthAnchor.constraint(equalTo: maleView.widthAnchor, multiplier: 0.3).isActive = true
        maleImage.heightAnchor.constraint(equalTo: maleImage.widthAnchor, multiplier: 1).isActive = true
        
        femaleImage.centerYAnchor.constraint(equalTo: femaleView.centerYAnchor, constant: -20).isActive = true
        femaleImage.centerXAnchor.constraint(equalTo: femaleView.centerXAnchor, constant: 0).isActive = true
        femaleImage.widthAnchor.constraint(equalTo: femaleView.widthAnchor, multiplier: 0.3).isActive = true
        femaleImage.heightAnchor.constraint(equalTo: femaleImage.widthAnchor, multiplier: 1).isActive = true
        
        maleLabel.centerXAnchor.constraint(equalTo: maleView.centerXAnchor, constant: 0).isActive = true
        maleLabel.topAnchor.constraint(equalTo: maleImage.bottomAnchor, constant: 20).isActive = true
        
        femaleLabel.centerXAnchor.constraint(equalTo: femaleView.centerXAnchor, constant: 0).isActive = true
        femaleLabel.topAnchor.constraint(equalTo: femaleImage.bottomAnchor, constant: 20).isActive = true
        
        heightView.topAnchor.constraint(equalTo: maleView.bottomAnchor, constant: 30).isActive = true
        heightView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10).isActive = true
        heightView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10).isActive = true
        heightView.heightAnchor.constraint(equalTo: maleView.heightAnchor, multiplier: 1).isActive = true
        
        heightLabel.centerXAnchor.constraint(equalTo: heightView.centerXAnchor, constant: 0).isActive = true
        heightLabel.topAnchor.constraint(equalTo: heightView.topAnchor, constant: 15).isActive = true
        
        heightValueLabel.centerXAnchor.constraint(equalTo: heightView.centerXAnchor, constant: 0).isActive = true
        heightValueLabel.bottomAnchor.constraint(equalTo: heightView.topAnchor, constant: 80).isActive = true
        
        slider.centerXAnchor.constraint(equalTo: heightView.centerXAnchor, constant: 0).isActive = true
        slider.bottomAnchor.constraint(equalTo: heightView.bottomAnchor, constant: -70).isActive = true
        slider.trailingAnchor.constraint(equalTo: heightView.trailingAnchor, constant: -10).isActive = true
        slider.leadingAnchor.constraint(equalTo: heightView.leadingAnchor, constant: 10).isActive = true
        
        weightView.topAnchor.constraint(equalTo: heightView.bottomAnchor, constant: 30).isActive = true
        weightView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10).isActive = true
        weightView.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.44).isActive = true
        weightView.heightAnchor.constraint(equalTo: weightView.widthAnchor, multiplier: 1).isActive = true
        
        ageView.topAnchor.constraint(equalTo: heightView.bottomAnchor, constant: 30).isActive = true
        ageView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10).isActive = true
        ageView.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.44).isActive = true
        ageView.heightAnchor.constraint(equalTo: ageView.widthAnchor, multiplier: 1).isActive = true
        
        weightLabel.topAnchor.constraint(equalTo: weightView.topAnchor, constant: 30).isActive = true
        weightLabel.centerXAnchor.constraint(equalTo: weightView.centerXAnchor, constant: 0).isActive = true
        
        ageLabel.topAnchor.constraint(equalTo: ageView.topAnchor, constant: 30).isActive = true
        ageLabel.centerXAnchor.constraint(equalTo: ageView.centerXAnchor, constant: 0).isActive = true
        
        weightValueLabel.centerXAnchor.constraint(equalTo: weightView.centerXAnchor, constant: 0).isActive = true
        weightValueLabel.topAnchor.constraint(equalTo: weightLabel.bottomAnchor, constant: 15).isActive = true
        
        ageValueLabel.centerXAnchor.constraint(equalTo: ageView.centerXAnchor, constant: 0).isActive = true
        ageValueLabel.topAnchor.constraint(equalTo: ageLabel.bottomAnchor, constant: 15).isActive = true
        
        weightPlusImageView.topAnchor.constraint(equalTo: weightValueLabel.bottomAnchor, constant: 5).isActive = true
        weightPlusImageView.leadingAnchor.constraint(equalTo: weightView.leadingAnchor, constant: 35).isActive = true
        weightPlusImageView.widthAnchor.constraint(equalTo: weightView.widthAnchor, multiplier: 0.25).isActive = true
        weightPlusImageView.heightAnchor.constraint(equalTo: weightPlusImageView.widthAnchor, multiplier: 1).isActive = true
        
        weightMinusImageView.topAnchor.constraint(equalTo: weightValueLabel.bottomAnchor, constant: 5).isActive = true
        weightMinusImageView.trailingAnchor.constraint(equalTo: weightView.trailingAnchor, constant: -35).isActive = true
        weightMinusImageView.widthAnchor.constraint(equalTo: weightView.widthAnchor, multiplier: 0.25).isActive = true
        weightMinusImageView.heightAnchor.constraint(equalTo: weightMinusImageView.widthAnchor, multiplier: 1).isActive = true
        
        agePlusImageView.topAnchor.constraint(equalTo: ageValueLabel.bottomAnchor, constant: 5).isActive = true
        agePlusImageView.leadingAnchor.constraint(equalTo: ageView.leadingAnchor, constant: 35).isActive = true
        agePlusImageView.widthAnchor.constraint(equalTo: ageView.widthAnchor, multiplier: 0.25).isActive = true
        agePlusImageView.heightAnchor.constraint(equalTo: agePlusImageView.widthAnchor, multiplier: 1).isActive = true
        
        ageMinusImageView.topAnchor.constraint(equalTo: ageValueLabel.bottomAnchor, constant: 5).isActive = true
        ageMinusImageView.trailingAnchor.constraint(equalTo: ageView.trailingAnchor, constant: -35).isActive = true
        ageMinusImageView.widthAnchor.constraint(equalTo: ageView.widthAnchor, multiplier: 0.25).isActive = true
        ageMinusImageView.heightAnchor.constraint(equalTo: ageMinusImageView.widthAnchor, multiplier: 1).isActive = true
        
        calButton.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10).isActive = true
        calButton.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10).isActive = true
        calButton.topAnchor.constraint(equalTo: weightView.bottomAnchor, constant: 30).isActive = true
        calButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    @objc func changeSlider(_ sender: UISlider) {
        heightValueLabel.text = formatNumber(sender.value) + " cm"
        height = Float(formatNumber(sender.value)) ?? 0
        }
    
    @objc func countPlusWeight(_ sender: UITapGestureRecognizer) {
        if weight >= maxWeight {
            weight = maxWeight
        } else {
            weight = weight + 1
        }
        weightValueLabel.text = "\(weight)"
    }
    
    @objc func countMinusWeight(_ sender: UITapGestureRecognizer) {
        if weight <= minWeight {
            weight = minWeight
        } else {
            weight = weight - 1
        }
            weightValueLabel.text = "\(weight)"
        }
    

    @objc func countPlusAge(_ sender: UITapGestureRecognizer) {
        if age >= maxAge {
            age = maxAge
        } else {
            age = age + 1
        }
        ageValueLabel.text = "\(age)"
    }
    
    @objc func countMinusAge(_ sender: UITapGestureRecognizer) {
        if age <= minAge {
            age = minAge
        } else {
            age = age - 1
        }
        ageValueLabel.text = "\(age)"
    }
    
    @objc func onCalButton() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let resultViewController = storyboard.instantiateViewController(identifier: "ResultViewController") as! ResultViewController
        
        let h = height / 100
        let bmiResult = Float(weight) / (h * h)
        BMI = roundNumber(bmiResult, 2)

        switch BMI {
        case 0..<16:
            resultViewController.des1 = "Bạn gầy độ III"
            resultViewController.des2 = "Cùi lắm!!!"
            break
        case 16..<17:
            resultViewController.des1 = "Bạn gầy độ II"
            resultViewController.des2 = "Chán lắm!!!"
            break
        case 17..<18.5:
            resultViewController.des1 = "Bạn gầy độ I"
            resultViewController.des2 = "Non và xanh lắm!!!"
            break
        case 18.5..<25:
            resultViewController.des1 = "Body bạn ổn đấy"
            resultViewController.des2 = "Ngon rồi!!!"
            break
        case 25..<30:
            resultViewController.des1 = "Bạn bị thừa cân"
            resultViewController.des2 = "Hơi mập rồi nhé!!!"
            break
        case 30..<35:
            resultViewController.des1 = "Bạn bị béo phì độ I"
            resultViewController.des2 = "Thành heo rồi đó!!!"
            break
        case 35..<40:
            resultViewController.des1 = "Bạn bị béo phì cấp II"
            resultViewController.des2 = "Bị lợn nhập ah!!!"
        default:
            resultViewController.des1 = "Bạn bị béo phì cấp III"
            resultViewController.des2 = "Sắp tèo rồi đấy!!!"
        }
        
        resultViewController.modalPresentationStyle = .fullScreen
        resultViewController.numResult = BMI
        self.present(resultViewController, animated: true, completion: nil)
    }
    
    //làm tròn số
    func roundNumber(_ value: Float, _ places: Int) -> Float {
        let divisor = powf(10.0, Float(places))
        return round(value * divisor) / divisor
    }
    
    //đưa số về dạng chuỗi
    func formatNumber(_ value: Float) -> String {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.groupingSeparator = "."
        formatter.decimalSeparator = ","
        formatter.maximumFractionDigits = 0
        formatter.numberStyle = .decimal
        
        return formatter.string(from: NSNumber(value: value)) ?? "0"
    }
    
    @objc func onTapMale(){
        changeGender(isMale)
        isMale = !isMale
    }
    
    @objc func onTapFemale(){
        changeGender(isMale)
        isMale = !isMale
    }
    
    func changeGender(_ value: Bool){
        if value {
            maleView.backgroundColor = UIColor(red: 0.14, green: 0.15, blue: 0.23, alpha: 1.00)
            femaleView.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.27, alpha: 1.00)
        } else {
            femaleView.backgroundColor = UIColor(red: 0.14, green: 0.15, blue: 0.23, alpha: 1.00)
            maleView.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.27, alpha: 1.00)
        }
    }
    
//    // giữ để tăng cân
//    @objc func onLongPressPlusWeight(_ gesture: UILongPressGestureRecognizer) {
//
//        switch gesture.state {
//        case .began:
//            timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(countPlusWeight(_:)), userInfo: nil, repeats: true)
//        case .ended:
//            timer.invalidate()
//        default:
//            break
//        }
//    }
//
//    // giữ để giảm cân
//    @objc func onLongPressMinusWeight(_ gesture: UILongPressGestureRecognizer) {
//
//        switch gesture.state {
//        case .began:
//            timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(countMinusWeight(_:)), userInfo: nil, repeats: true)
//        case .ended:
//            timer.invalidate()
//        default:
//            break
//        }
//    }
//
//    // giữ để tăng tuổi
//    @objc func onLongPressPlusAge(_ gesture: UILongPressGestureRecognizer) {
//
//        switch gesture.state {
//        case .began:
//            timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(countPlusAge(_:)), userInfo: nil, repeats: true)
//        case .ended:
//            timer.invalidate()
//        default:
//            break
//        }
//    }
//
//    // giữ để giảm tuổi
//    @objc func onLongPressMinusAge(_ gesture: UILongPressGestureRecognizer) {
//
//        switch gesture.state {
//        case .began:
//            timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(countMinusAge(_:)), userInfo: nil, repeats: true)
//        case .ended:
//            timer.invalidate()
//        default:
//            break
//        }
//    }
}

