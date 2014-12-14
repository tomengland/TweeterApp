//
//  ParseTweet.swift
//  Tweeter
//
//  Created by THOMAS ENGLAND on 12/13/14.
//  Copyright (c) 2014 funcTom. All rights reserved.
//

import UIKit

class ParseTweet: NSObject {

    var tweetText: String?
    var userName: String?
    var createdAt: String?
    var userAvatarURL: NSURL?

    override init() {
        super.init()
    }

    init(tweetText: String?, userName: String?, createdAt: String?, userAvatarURL: NSURL?) {
        super.init()
        self.tweetText = tweetText
        self.userName = userName
        self.createdAt = createdAt
        self.userAvatarURL = userAvatarURL
    }
}
