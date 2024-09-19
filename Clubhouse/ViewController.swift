//
//  ViewController.swift
//  Clubhouse
//
//  Created by Катя on 07.06.2024.
//
import SnapKit
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }

    private func initialize () {
        view.backgroundColor = UIColor(red: 241/255, green: 238/255, blue: 228/255, alpha: 1)
        
        let label = UILabel()
        label.text = "🥳 Welcome!"
        label.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(label)
        label.snp.makeConstraints { maker in
            maker.left.equalToSuperview().inset(50)
            maker.top.equalToSuperview().inset(150)
        }
        let extraLabel = UILabel()
        extraLabel.text = "Extra text Extra text Extra text Extra text Extra text Extra text Extra text Extra text Extra text Extra text Extra text Extra text Extra text Extra text Extra text"
        extraLabel.numberOfLines = 0
        view.addSubview(extraLabel)
        extraLabel.snp.makeConstraints { maker in
            maker.leading.trailing.equalToSuperview().inset(50)
            maker.top.equalTo(label).inset(50)
            
        }
        
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(red: 84/255, green: 118/255, blue: 171/255, alpha: 1)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 20
        button.setTitle("Get your username ->", for: .normal)
        view.addSubview(button)
        button.snp.makeConstraints { maker in
            maker.centerX.equalToSuperview()
            maker.width.equalTo(250)
            maker.bottom.equalToSuperview().inset(30)
            maker.height.equalTo(40)
            
            
        }
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    @objc private func buttonTapped() {
        print("We want to get a username")
    }
}

