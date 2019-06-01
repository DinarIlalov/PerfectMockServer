//
//  GetGroupsResponse.swift
//  course6
//
//  Created by Dinar Ilalov on 22/01/2019.
//  Copyright © 2019 Илалов Динар. All rights reserved.
//

import Foundation

struct GetGroupsResponse: Codable {
    let response: GroupsResponse
}

struct GroupsResponse: Codable {
    let count: Int
    let groups: [Group]
    
    enum CodingKeys: String, CodingKey {
        case count = "count"
        case groups = "items"
    }
}
