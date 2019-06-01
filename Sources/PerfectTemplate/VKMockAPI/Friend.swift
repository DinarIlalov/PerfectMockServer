//
//  Friend.swift
//  course6
//
//  Created by Dinar Ilalov on 17/01/2019.
//  Copyright © 2019 Илалов Динар. All rights reserved.
//

import Foundation

struct Friend: Codable {
    let id: Int
    let firstName: String
    let lastName: String
    let avatarUrl: String
    let online: Int
    
    enum CodingKeys: String, CodingKey {
        case id
        case firstName = "first_name"
        case lastName = "last_name"
        case avatarUrl = "photo_50"
        case online
    }
}
