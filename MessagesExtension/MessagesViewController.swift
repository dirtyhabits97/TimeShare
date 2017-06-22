//
//  MessagesViewController.swift
//  MessagesExtension
//
//  Created by Gonzalo Reyes Huertas on 6/22/17.
//  Copyright © 2017 Gonzalo Reyes Huertas. All rights reserved.
//

import UIKit
import Messages
import SnapKit

class MessagesViewController: MSMessagesAppViewController {
    
    // MARK: - Interface Objects
    let newEventButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Create New Event", for: .normal)
        button.addTarget(self, action: #selector(handleNewEvent), for: .touchUpInside)
        return button
    }()
    
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    // MARK: - Setup Methods
    fileprivate func setupViews() {
        view.addSubview(newEventButton)
        newEventButton.snp.makeConstraints { (make) in
            make.center.equalTo(self.view)
            make.height.equalTo(44)
            
        }
    }
    
    // MARK: - Handle Methods
    func handleNewEvent() {
        let createEventController = CreateEventController()
        present(createEventController, animated: true)
    }
}
