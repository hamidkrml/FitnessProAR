//
//  EndPoint.swift
//  BitirmeProjesi
//
//  Created by hamid on 06.03.25.
//

import Foundation

protocol EndPointProtocol{
    var baseURL: String { get }
    var path: String { get }
    var method : HttpMethod { get }
    var headrs : [String:String]? { get }
    
    
    func request() -> URLRequest
}


enum HttpMethod : String{
    
    case get = "GET"
    case post = "POST"
    case delete = "DELETE"
    case patch = "PATCH"
    
}

/// farkli farkli path icin tanimlayacagiz
enum EndPoint{
    case getUsers
    
}



extension EndPoint:EndPointProtocol{
    var baseURL: String {
        return "https://valyuta.com"
    }
    
    
    var path: String {
        return "/api/get_currency_list_for_app"
    }
    
    var method: HttpMethod {
        switch self {
        case .getUsers: return .get
        
            
        }
    }
    
    var headrs: [String : String]? {
//                var header: [String:String] = ["kimlik dogrulama ":"\(token)token burasi olacak"]
        return nil
    }
    func request() -> URLRequest {
            guard var commpents = URLComponents(string: baseURL)else{
                fatalError("url hatalidir")
            }
            commpents.path = path
            var request = URLRequest(url: commpents.url!)
            request.httpMethod = method.rawValue
            
            
            if let header = headrs{
                for (key,value) in header{
                    request.setValue(value, forHTTPHeaderField: key)
                }
            }
            return request
        }
        
        
    }
