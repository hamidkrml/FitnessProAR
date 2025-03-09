//
//  Maneger.swift
//  BitirmeProjesi
//
//  Created by hamid on 06.03.25.
//

import Foundation


class NetworkMeneger {
    static let shared = NetworkMeneger()
    private init(){}
    
    private func request<T:Decodable>(_ endpoint: EndPoint, completion: @escaping (Result<T, Error>) -> Void){
    
        let task = URLSession.shared.dataTask(with: endpoint.request()){data,response,eror in
            /// eror icin
            if let eror = eror{
                completion(.failure(eror))
                return
            }
            ///response icin
            guard let response = response as? HTTPURLResponse, response.statusCode >= 200, response.statusCode <= 200 else {
                 
                completion(.failure(NSError(domain: "invalide response", code: 0)))
                return
            }
            
            guard let data = data else{
                completion(.failure(NSError(domain: "invalide response data", code: 0)))
                return
            }
            
            do {
                 let decodeData = try JSONDecoder().decode(T.self, from: data)
                completion(.success(decodeData))
            }catch let error {
                completion(.failure(error))
            }
        }
        
        task.resume()
    }
    func getuser(completion: @escaping(Result<User, Error>)->Void){
        let endpoint = EndPoint.getUsers
        request(endpoint, completion: completion)
    }
    func getcomments(postId:String,completion: @escaping(Result<User, Error>)->Void){
        let endpoint = EndPoint.comments(postID: postId)
        request(endpoint, completion: completion)
    }
}
