//
//  Resource.swift
//  Covey-iOS
//
//  Created by Jinu Kim on 2019/09/19.
//  Copyright © 2019 com.KakaoTocs.kr. All rights reserved.
//

import Foundation

enum ServerURL: String {
    case real = ""
    case test = "127.0.0.1"
}

enum APIParameterKey {
    static let sessionToken = "sessionToken"
}

enum HTTPHeaderField: String {
    case authentication = "Authorization"
    case contentType = "Content-Type"
}

enum HTTPHeaderValue: String {
    case session = "1"
}

enum ContentType: String {
    case json = "application/json"
}
