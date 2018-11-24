//
//  ChatViewController.swift
//  K Group
//
//  Created by Yaroslav on 11/24/18.
//  Copyright © 2018 Mountain Viewer. All rights reserved.
//

import UIKit
import NoChat

class ChatViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChatCell", for: indexPath)
        if indexPath.row == 0 {
            cell.textLabel?.text = "Telegram"
            cell.imageView?.image = UIImage(named: "TGIcon")
        } else if indexPath.row == 1 {
            cell.textLabel?.text = "WeChat"
            cell.imageView?.image = UIImage(named: "MMIcon")
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let chat = ChatViewController.botChat
        var chatVC: UIViewController?
        if indexPath.row == 0 {
            chatVC = TGChatViewController(chat: chat)
        } else if indexPath.row == 1 {
            chatVC = MMChatViewController(chat: chat)
        }
        if let vc = chatVC {
            navigationController?.pushViewController(vc, animated: true)
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
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
