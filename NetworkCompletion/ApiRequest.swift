//
//  ApiRequest.swift
//  NetworkCompletion
//
//  Created by IrvingHuang on 2019/12/26.
//  Copyright © 2019 Irving Huang. All rights reserved.
//

import Foundation

typealias JSONDictionary = [String: Any]
typealias Completion = (Result<JSONDictionary, Error>) -> Swift.Void


public class ApiRequest {
 
    enum HttpMethod: String {
        case get = "GET"
        case post = "POST"
    }
    
    var method: HttpMethod
    var parameters: JSONDictionary?
    
    init(method: HttpMethod, parameters: JSONDictionary = [:]) {
        self.method = method
        self.parameters = parameters
    }
}

struct ApiManager {
    
    private init() {}

    public static func request(from req: ApiRequest, completion: Completion?) {
        guard let url = URL(string: "https://www.google.com") else { return }
        let urlSession = URLSession.shared
        let task = urlSession.dataTask(with: url) { (data, response, error) in
            DispatchQueue.main.async {
                completion?(.success(Dictionary()))
            }
        }
        task.resume()
    }
}
