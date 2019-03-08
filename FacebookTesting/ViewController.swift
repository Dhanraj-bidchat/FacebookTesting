//
//  ViewController.swift
//  FacebookTesting
//
//  Created by Dhanraj Naik on 07/03/19.
//  Copyright © 2019 bidchat.com. All rights reserved.
//

import UIKit
import FacebookShare

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func shareOnFb(_ sender: Any) {
        let myContent:LinkShareContent = LinkShareContent.init(url: URL.init(string: "https://developers.facebook.com") ?? URL.init(fileURLWithPath: "https://developers.facebook.com"), quote: "Share This Content")
        let shareDialog = ShareDialog(content: myContent)
        shareDialog.mode = .native
        shareDialog.failsOnInvalidData = true
        shareDialog.completion = { result in
            // Handle share results
        }

        do
        {
            try shareDialog.show()
        }
        catch
        {
            print("Exception")

        }
        
//        let url = URL(fileURLWithPath: "https://developers.facebook.com")
//        let content = LinkShareContent(url: url, title: "facebook", description: "facebook developers", quote: "fbd", imageURL: nil)
//        try! ShareDialog.show(from: self, content: content)
    }
}

