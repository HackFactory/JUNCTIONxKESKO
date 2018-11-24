//
//  ChatViewController.swift
//  K Group
//
//  Created by Yaroslav on 11/24/18.
//  Copyright © 2018 Mountain Viewer. All rights reserved.
//

import UIKit
import NoChat

class ChatViewController: UIViewController {
    
    @IBOutlet weak var startMessagingButton: UIButton!
    
    @IBAction func startMessaging(_ sender: Any) {
        let chat = ChatViewController.botChat
        let vc = TGChatViewController(chat: chat)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func configureButton() {
        let leftColor = UIColor(red: 255.0/255.0, green: 147.0/255.0, blue: 90.0/255.0, alpha: 1.0)
        let rightColor = UIColor(red: 247.0/255.0, green: 87.0/255.0, blue: 53.0/255.0, alpha: 1.0)
        startMessagingButton.applyGradient(colours: [leftColor, rightColor])
        startMessagingButton.layer.shadowOffset = CGSize(width: 2, height: 2)
        startMessagingButton.layer.shadowColor = UIColor.black.cgColor
        startMessagingButton.layer.shadowOpacity = 0.3
        startMessagingButton.layer.cornerRadius = 10.0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureButton()
        
        DispatchQueue.main.async {
            let chat = ChatViewController.botChat
            let vc = TGChatViewController(chat: chat)
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    static let botChat: Chat = {
        let chat = Chat()
        chat.type = "bot"
        chat.targetId = "89757"
        chat.chatId = chat.type + "_" + chat.targetId
        chat.title = "Kesko Support"
        chat.detail = "Support Bot"
        return chat
    }()


}
