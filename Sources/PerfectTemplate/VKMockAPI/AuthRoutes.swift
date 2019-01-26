//
//  AuthRoutes.swift
//  PerfectTemplate
//
//  Created by Илалов Динар on 26/01/2019.
//

import Foundation
import PerfectHTTP
import PerfectHTTPServer

func authRoutes() -> [Route] {
    
    return [
        Route(method: .get, uri: "/api", handler: authHandler)
    ]
}

func authHandler(request: HTTPRequest, response: HTTPResponse) {
    // Respond with a simple message.
    response.setHeader(.contentType, value: "text/html")
    response.appendBody(string: "<html><title>Hello, world API!</title><body>Hello, world API!</body></html>")
    // Ensure that response.completed() is called when your processing is done.
    response.completed()
}
