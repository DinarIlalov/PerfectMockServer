//
//  VKMockAPI.swift
//  PerfectTemplate
//
//  Created by Илалов Динар on 26/01/2019.
//

import Foundation
import PerfectHTTP
import PerfectHTTPServer

func VKMockAPIRoutes() -> Routes {
    
    var routes = Routes()
    
    routes.add(authRoutes())
    routes.add(friendsRoutes())
    routes.add(groupsRoutes())
    
    return routes
    
}

