//
//  ViewController.swift
//  Tweeter
//
//  Created by THOMAS ENGLAND on 12/13/14.
//  Copyright (c) 2014 funcTom. All rights reserved.
//

import UIKit
import Social
let defaultAvatarURL = NSURL(string: "https://abs.twimg.com/sticky/default_profile_images/default_profile_6_200x200.png")

public class ViewController: UITableViewController {

    var parseTweets: Array <ParseTweet> =  [
        ParseTweet(tweetText: "iOS", userName: "@pragprog", createdAt: "2014-08-20", userAvatarURL: defaultAvatarURL),
        ParseTweet(tweetText: "zac is shit", userName: "@devtomengland", createdAt: "2014-12-13", userAvatarURL: defaultAvatarURL),
        ParseTweet(tweetText: "Anime is shit", userName: "@invalidname", createdAt: "2014-07-31", userAvatarURL: defaultAvatarURL)
    ]

    public override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.reloadTweets()
    }

    public override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    public override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    public override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return parseTweets.count
    }

    public override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("UserAndTweetCell") as UITableViewCell
        let parsedTweetCell = parseTweets[indexPath.row]

        cell.textLabel!.text = parsedTweetCell.userName
        cell.detailTextLabel!.text = parsedTweetCell.tweetText
        return cell
    }


// helper functions
    func reloadTweets() {
        self.tableView.reloadData()
    }
// creates 1000 tweets.
//    func createTweets() {
//        for var i = 0; i < 1000; i++ {
//            parseTweets += [ParseTweet(tweetText: "\(i)", userName: "@devtomengland", createdAt: "today", userAvatarURL: defaultAvatarURL)]
//        }
//    }
}

