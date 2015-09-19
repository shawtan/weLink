//
//  ChatController.swift
//  SelfieTag
//
//  Created by Shaw on 2015-09-19.
//  Copyright (c) 2015 Shaw. All rights reserved.
//
//  Created by Jason Du
//  Copyright (c) 2015 Jason Du. All rights reserved.
//

import UIKit
import Firebase


class ChatController: UIViewController
{
    override func viewDidLoad() {

//        var myRootRef = Firebase(url:"https://blistering-torch-3319.firebaseio.com")
        var testRef = Firebase(url:"https://docs-examples.firebaseio.com/web/data/users/mchen/name")
        var ref2 = Firebase(url:"https://blistering-torch-3319.firebaseio.com/")
        
        
        // Get a reference to our posts
        var ref = Firebase(url:"https://docs-examples.firebaseio.com/web/saving-data/fireblog/posts")

        
        // Get a reference to our posts
        var chatRef = Firebase(url:"https://blistering-torch-3319.firebaseio.com/chat/a-b/001")
        
        
        
        chatRef.observeEventType(.Value, withBlock: { snapshot in
            println(snapshot.value["name"])
            println(snapshot.value["message"])
            }, withCancelBlock: { error in
                println(error.description)
        })
        
        // Retrieve new posts as they are added to your database
//        chatRef.observeEventType(.ChildAdded, withBlock: { snapshot in
//            println(snapshot.value.objectForKey("name"))
//            println(snapshot.value.objectForKey("message"))
//        })
        
        println("hii");
//        println("ref: \(ref2)")
        
        // *** STEP 4: RECEIVE MESSAGES FROM FIREBASE (limited to latest 25 messages)
//        ref.queryLimitedToNumberOfChildren(25).observeEventType(FEventType.ChildAdded, withBlock: { (snapshot) in
//            let text = snapshot.value["text"] as? String
//            let sender = snapshot.value["sender"] as? String
//            let imageUrl = snapshot.value["imageUrl"] as? String
//            
//            let message = Message(text: text, sender: sender, imageUrl: imageUrl)
//            self.messages.append(message)
//            self.finishReceivingMessage()
//        })
        
        
    }


}



