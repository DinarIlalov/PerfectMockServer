//
//  ImagesRoute.swift
//  PerfectTemplate
//
//  Created by Dinar Ilalov on 06/02/2019.
//

import Foundation
import PerfectHTTP
import PerfectHTTPServer
import PerfectLib

func imagesRoute() -> [Route] {
    
    // exmpl: http://localhost:8181/images/image1.jpg
    return [
        Route(method: .get, uri: "/images/*", handler: StaticFileHandler(documentRoot: "./webroot", allowResponseFilters: true).handleRequest),
    ]
}

