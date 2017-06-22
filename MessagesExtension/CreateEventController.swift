//
//  CreateEventController.swift
//  TimeShare
//
//  Created by Gonzalo Reyes Huertas on 6/22/17.
//  Copyright © 2017 Gonzalo Reyes Huertas. All rights reserved.
//

import UIKit
import SnapKit

class CreateEventController: UIViewController {
    
    // MARK: - Interface Objects
    lazy var eventTableView: UITableView = {
        let tv = UITableView()
        tv.delegate = self
        tv.backgroundColor = .black
        return tv
    }()
    let datePicker: UIDatePicker = {
        let picker = UIDatePicker()
        return picker
    }()
    let addDateButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Add Date", for: .normal)
        return button
    }()
    let saveButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Save", for: .normal)
        return button
    }()
    
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
        setupViews()
    }
    
    // MARK: - Setup Methods
    fileprivate func registerCells() {
        
    }
    fileprivate func setupViews() {
        let auxView = UIView()
        auxView.addSubview(datePicker)
        datePicker.snp.makeConstraints { (make) in
            make.edges.equalTo(auxView)
        }
        let stackView = UIStackView(arrangedSubviews: [addDateButton, saveButton])
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 40
        view.addSubview(auxView)
        view.addSubview(stackView)
        view.addSubview(eventTableView)
        stackView.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.view)
            make.bottom.equalTo(self.view).offset(-40)
            make.height.equalTo(32)
        }
        auxView.snp.makeConstraints { (make) in
            make.height.equalTo(216)
            make.bottom.equalTo(stackView.snp.top)
        }
        eventTableView.snp.makeConstraints { (make) in
            make.top.equalTo(self.view)
            make.bottom.equalTo(topLayoutGuide.snp.top)
        }
    }
}

extension CreateEventController: UITableViewDelegate {
    
}
