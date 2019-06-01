//
//  Group.swift
//  course6
//
//  Created by Dinar Ilalov on 22/01/2019.
//  Copyright © 2019 Илалов Динар. All rights reserved.
//

import Foundation

struct Group: Codable {
    let id: Int
    let name: String
    let avatarUrl: String
    let type: String
    let membersCount: Int

    enum CodingKeys: String, CodingKey {
        case id
        case name = "name"
        case avatarUrl = "photo_50"
        case type = "type"
        case membersCount = "members_count"
    }
}
