////
////  BMIViewController.swift
////  BMI CALCULATOR
////
////  Created by NguyenVu on 11/4/20.
////
//
//import UIKit
//
//class BMIViewController: UIViewController {
//    
//    let containerView: UIView = {
//        let view = UIView()
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.backgroundColor = UIColor(red: 0.11, green: 0.13, blue: 0.21, alpha: 1.00)
//        return view
//    }()
//    
//    let yourresultLabel: UILabel = {
//        let label = UILabel()
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.text = "Your Result"
//        label.textColor = UIColor.white
//        label.font = UIFont.boldSystemFont(ofSize: 35)
//        return label
//    }()
//    
//    let resultView: UIView = {
//        let view = UIView()
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.27, alpha: 1.00)
//        return view
//    }()
//    
//    let reCalButton: CustomButton = {
//        let button = CustomButton("CALCULATE", UIColor(red: 0.91, green: 0.24, blue: 0.40, alpha: 1.00), UIFont.boldSystemFont(ofSize: 23))
//        button.translatesAutoresizingMaskIntoConstraints = false
//        button.addTarget(self, action: #selector(onCalculator), for: .touchUpInside)
//        return button
//    }()
//    
//    let resultLabel: UILabel = {
//        let label = UILabel()
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.text = "NORMAL"
//        label.textColor = UIColor(red: 0.38, green: 0.59, blue: 0.50, alpha: 1.00)
//        label.font = UIFont.boldSystemFont(ofSize: 20)
//        return label
//    }()
//    
//    let numResultLabel: UILabel = {
//        let label = UILabel()
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.text = "22.22"
//        label.textColor = UIColor.white
//        label.font = UIFont.boldSystemFont(ofSize: 60)
//        return label
//    }()
//    
//    let descriptionLabel1: UILabel = {
//        let label = UILabel()
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.text = "You have a normal body weight."
//        label.textColor = UIColor.white
//        return label
//    }()
//    
//    let descriptionLabel2: UILabel = {
//        let label = UILabel()
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.text = "Good job!"
//        label.textColor = UIColor.white
//        return label
//    }()
//    
//    let label: UILabel = {
//            let label = UILabel()
//            label.translatesAutoresizingMaskIntoConstraints = false
//            label.text = "XYZ"
//            label.textColor = UIColor.white
//            label.textAlignment = .center
//            return label
//        }()
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        addSubviews()
//        setupLayout()
//    }
//    
//    func addSubviews() {
//        view.addSubview(containerView)
//        containerView.addSubview(yourresultLabel)
//        containerView.addSubview(resultView)
//        containerView.addSubview(reCalButton)
//        resultView.addSubview(resultLabel)
//        resultView.addSubview(numResultLabel)
//        resultView.addSubview(descriptionLabel1)
//        resultView.addSubview(descriptionLabel2)
//        containerView.addSubview(label)
//    }
//    
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        resultView.layer.cornerRadius = 10
//        resultView.clipsToBounds = true
//        
//    }
//    
//    func setupLayout() {
//        containerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
//        containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
//        containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
//        containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
//        
//        yourresultLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 44).isActive = true
//        yourresultLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10).isActive = true
//        
//        resultView.topAnchor.constraint(equalTo: yourresultLabel.bottomAnchor, constant: 30).isActive = true
//        resultView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10).isActive = true
//        resultView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10).isActive = true
//        resultView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -124).isActive = true
//        
//        reCalButton.topAnchor.constraint(equalTo: resultView.bottomAnchor, constant: 20).isActive = true
//        reCalButton.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10).isActive = true
//        reCalButton.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10).isActive = true
//        reCalButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
//        
//        resultLabel.centerXAnchor.constraint(equalTo: resultView.centerXAnchor, constant: 0).isActive = true
//        resultLabel.topAnchor.constraint(equalTo: resultView.topAnchor, constant: 130).isActive = true
//        
//        numResultLabel.centerXAnchor.constraint(equalTo: resultView.centerXAnchor, constant: 0).isActive = true
//        numResultLabel.topAnchor.constraint(equalTo: resultLabel.bottomAnchor, constant: 130).isActive = true
//        
//        descriptionLabel1.centerXAnchor.constraint(equalTo: resultView.centerXAnchor, constant: 0).isActive=true
//        descriptionLabel1.topAnchor.constraint(equalTo: numResultLabel.bottomAnchor, constant: 130).isActive = true
//        
//        descriptionLabel2.centerXAnchor.constraint(equalTo: resultView.centerXAnchor, constant: 0).isActive=true
//        descriptionLabel2.topAnchor.constraint(equalTo: descriptionLabel1.bottomAnchor, constant: 10).isActive = true
//        
//        label.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
//        label.centerYAnchor.constraint(equalTo: containerView.centerYAnchor, constant: 0).isActive = true
//    }
//    
//    @objc func onCalculator() {
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let resultVC = storyboard.instantiateViewController(identifier: "ResultViewController") as! ResultViewController
//        resultVC.modalPresentationStyle = .fullScreen
//        
//        //hứng dữ liệu từ màn yourresult
//        resultVC.passData = { [weak self] data in
//            guard let strongSelf = self else {return}
//            strongSelf.label.text = data
//        }
//            present(resultVC, animated: true, completion: nil)
//    }
//    
//}
