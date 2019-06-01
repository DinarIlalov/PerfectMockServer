//
//  GroupsRoutes.swift
//  PerfectTemplate
//
//  Created by Илалов Динар on 26/01/2019.
//

import Foundation
import PerfectHTTP
import PerfectHTTPServer

func groupsRoutes() -> [Route] {
    
    return [
        Route(method: .get, uri: "/groups.get", handler: getGroupsHandler)
    ]
}

func getGroupsHandler(request: HTTPRequest, response: HTTPResponse) {
    
    if let errorStatus = checkParams(in: request) {
        response.completed(status: errorStatus)
        return
    }
    
    // TODO: need some handle
    let _ = request.param(name: "access_token") ?? ""
    let _ = request.param(name: "v") ?? "5.80"
    let _ = request.param(name: "extended") ?? "0"
    let _ = request.param(name: "fields") ?? ""
    
    let group1 = Group(
        id: 1,
        name: "group1",
        avatarUrl: "",
        type: "type",
        membersCount: 1)
    
    let resopnseGroups = GroupsResponse.init(count: 1, groups: [group1])
    
    let responseJSON = GetGroupsResponse(response: resopnseGroups)
    
    _ = try? response.setBody(json: responseJSON)
    response.completed()
}

