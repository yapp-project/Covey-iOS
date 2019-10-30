//
//  APIClient.swift
//  Covey-iOS
//
//  Created by Jinu Kim on 2019/09/21.
//  Copyright © 2019 com.KakaoTocs.kr. All rights reserved.
//

import Alamofire

class APIClient {
    
    static let shared = APIClient()

    static func test() {
        AF.request(APIRouter.test)
            .response { (response) in
        }
    }
}

