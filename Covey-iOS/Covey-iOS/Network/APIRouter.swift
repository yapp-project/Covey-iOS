//
//  APIRouter.swift
//  Covey-iOS
//
//  Created by Jinu Kim on 2019/09/20.
//  Copyright © 2019 com.KakaoTocs.kr. All rights reserved.
//

import Foundation
import Alamofire

enum APIRouter: URLRequestConvertible {
    
    case test
    
    private var method: HTTPMethod {
        switch self {
        case .test:
            return .get
        }
    }
    
    var path: String {
        switch self {
        case .test:
            return ""
        }
    }
    
    private var parameters: Parameters? {
        switch self {
        case .test:
            return nil
        }
    }
    
    func asURLRequest() throws -> URLRequest {
        var encodingPath = ""
        if let encodingP = path.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) {
            encodingPath = encodingP
        }
        let baseURL = ServerURL.real.rawValue + encodingPath
        let url = try baseURL.asURL()
        var urlRequest = URLRequest(url: url)
        
        // HTTP Method
        urlRequest.httpMethod = method.rawValue
        
        // Common Headers
        urlRequest.setValue(ContentType.json.rawValue, forHTTPHeaderField: HTTPHeaderField.contentType.rawValue)
        
        // Parameters
        if let parameters = parameters {
            do {
                urlRequest.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: [])
            } catch {
                throw AFError.parameterEncodingFailed(reason: .jsonEncodingFailed(error: error))
            }
        }
        // Return
        return urlRequest
    }
}
