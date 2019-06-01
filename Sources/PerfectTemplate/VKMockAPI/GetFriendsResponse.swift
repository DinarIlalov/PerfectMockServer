//
//  GetFriendsResponse.swift
//  course6
//
//  Created by Dinar Ilalov on 17/01/2019.
//  Copyright © 2019 Илалов Динар. All rights reserved.
//

import Foundation

struct GetFriendsResponse: Codable {
    let response: FriendsResponse
}

struct FriendsResponse: Codable {
    let count: Int
    let friends: [Friend]
    
    enum CodingKeys: String, CodingKey {
        case count = "count"
        case friends = "items"
    }
}
