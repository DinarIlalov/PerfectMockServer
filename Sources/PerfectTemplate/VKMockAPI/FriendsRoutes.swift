//
//  FriendsRoutes.swift
//  PerfectTemplate
//
//  Created by Илалов Динар on 26/01/2019.
//

import Foundation
import PerfectHTTP
import PerfectHTTPServer

func friendsRoutes() -> [Route] {
    
    return [
        Route(method: .get, uri: "/friends.get", handler: getFriendsHandler)
    ]
}

func getFriendsHandler(request: HTTPRequest, response: HTTPResponse) {

    if let errorStatus = checkParams(in: request) {
        response.completed(status: errorStatus)
        return
    }
    
    // TODO: need some handle
    let _ = request.param(name: "access_token") ?? ""
    let _ = request.param(name: "v") ?? "5.80"
    let _ = request.param(name: "fields") ?? ""
    
    let friend1 = Friend.init(
        id: 1,
        firstName: "Petr",
        lastName: "Petrov",
        avatarUrl: "",
        online: 1)
    
    let resopnseFriends = FriendsResponse(count: 1, friends: [friend1])
    
    let responseJSON = GetFriendsResponse(response: resopnseFriends)
    
    _ = try? response.setBody(json: responseJSON)
    response.completed()

}
