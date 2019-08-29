//
//  HairCareNetworkClient.swift
//  HairCare
//
//  Created by Taylor Lyles on 8/26/19.
//  Copyright © 2019 Taylor Lyles. All rights reserved.
//

import Foundation

enum HTTPMethod: String {
	case get = "GET"
	case post = "POST"
}


class HairCareNetworkClient {
	
	var user: User?

	private let haircareURL = URL(string: "https://bw-hair-care-be.herokuapp.com/")!

	func registerUser(with user: User, completion: @escaping (Error?) -> Void) {
		let registerURL = haircareURL
			.appendingPathComponent("auth")
			.appendingPathComponent("register")
		
		var request = URLRequest(url: registerURL)
		request.httpMethod = HTTPMethod.post.rawValue
		request.setValue("application/json", forHTTPHeaderField: "Content-Type")
		
		do {
			request.httpBody = try JSONEncoder().encode(user)
		} catch {
			NSLog("Error encoding user object: \(error)")
			completion(error)
			return
		}
		
		URLSession.shared.dataTask(with: request) { (_, response, error)  in
			if let response = response as? HTTPURLResponse,
				response.statusCode != 201 {
				completion(NSError())
				return
			}
			
			if let error = error {
				NSLog("Error signing up: \(error)")
				completion(error)
				return
			}
			completion(nil)
		}.resume()
	}
}
