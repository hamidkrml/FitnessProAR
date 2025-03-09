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
    case comments(postID:String)
}



extension EndPoint:EndPointProtocol{
    var baseURL: String {
        return "https://jsonplaceholder.typicode.com"
    }
    
    
    var path: String {
        return "/users"
    }
    
    var method: HttpMethod {
        switch self {
        case .getUsers: return .get
        case .comments: return .get
            
        }
    }
    
    var headrs: [String : String]? {
//                var header: [String:String] = ["kimlik dogrulama ":"\(token)token burasi olacak"]
        return nil
    }
    
    func request() -> URLRequest {
        guard var commpents = URLComponents(string: baseURL) else {
            fatalError("Eror 404")
            
        }
        if case .comments(let id) = self{
            commpents.queryItems = [URLQueryItem(name: "postid", value: id)]
        }
        
        commpents.path = path
        var request  = URLRequest(url: commpents.url!)
        request.httpMethod = method.rawValue
        if let headrs = headrs{
            for (key,value) in headrs{
                request.setValue(value, forHTTPHeaderField: key)
            }
        }
        return request
    }

  
    
    
        
        
        
    }

