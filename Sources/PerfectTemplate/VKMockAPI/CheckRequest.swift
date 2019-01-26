//
//  CheckRequest.swift
//  PerfectTemplate
//
//  Created by Илалов Динар on 26/01/2019.
//

import Foundation
import PerfectHTTP
import PerfectHTTPServer

func checkParams(in request: HTTPRequest) -> HTTPResponseStatus? {
    
    var status: HTTPResponseStatus?
    
    let accessToken = request.param(name: "access_token") ?? ""
    if accessToken != "token" {
        
        status = HTTPResponseStatus.unauthorized
        return status
    }

    return status
}
