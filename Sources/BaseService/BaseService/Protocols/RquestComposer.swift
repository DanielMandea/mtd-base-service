//
//  RequestComposer.swift
//  
//
//  Created by Daniel Mandea on 27/09/2019.
//

import Foundation

public protocol RequestComposer {
    func decodableRequest<T: Codable>(with method: HttpMethod, path: String?, object: T?, headers: [String: String]?) -> URLRequest
    func dataRequest(with method: HttpMethod, path: String?, object: Data, headers: [String: String]?) -> URLRequest
    func request(with method: HttpMethod, path: String?, headers: [String: String]?) -> URLRequest
}
