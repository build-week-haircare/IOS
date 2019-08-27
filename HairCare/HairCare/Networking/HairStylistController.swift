//
//  HairStylistController.swift
//  HairCare
//
//  Created by Taylor Lyles on 8/27/19.
//  Copyright © 2019 Taylor Lyles. All rights reserved.
//
//
//import UIKit
//
//class HairstylistController {
//	
//	var hairstylist: [HairStylist] = []
//	
//	private let baseURL = URL(string: "")!
//	
//	func getHairstylist(for hairstylist: String, completion: @escaping (Result<HairStylist, NetworkError>) -> Void) {
//		let searchURL = baseURL.appendingPathComponent(hairstylist)
//		
//		var request = URLRequest(url: searchURL)
//		request.httpMethod = HTTPMethod.get.rawValue
//		
//		URLSession.shared.dataTask(with: request) { (data, response, error) in
//			if let response = response as? HTTPURLResponse,
//				response.statusCode != 200 {
//				(NSLog("Bad Response: \(response.statusCode)"))
//				completion(.failure(.badResponse))
//				return
//			}
//			
//			if let error = error {
//				NSLog("Error: \(error)")
//				completion(.failure(.otherError))
//				return
//			}
//			
//			guard let data = data else {
//				NSLog("Error: Bad Data)")
//				completion(.failure(.badData))
//				return
//			}
//			
//			let decoder = JSONDecoder()
//			do {
//				let search = try decoder.decode(HairStylist.self, from: data)
//				completion(.success(search))
//			} catch {
//				NSLog("Decoding error: \(error)")
//				completion(.failure(.noDecode))
//				return
//			}
//			}.resume()
//	}
//	
//	func get(at urlString: String, completion: @escaping (Result<UIImage, NetworkError>) -> Void) {
//		let imageURL = URL(string: urlString)!
//		
//		var request = URLRequest(url: imageURL)
//		request.httpMethod = HTTPMethod.get.rawValue
//		
//		URLSession.shared.dataTask(with: request) { (data, _, error) in
//			if let _ = error {
//				completion(.failure(.otherError))
//				return
//			}
//			
//			guard let data = data else {
//				completion(.failure(.badData))
//				return
//			}
//			
//			let image = UIImage(data: data)!
//			completion(.success(image))
//			}.resume()
//	}
//	
//	func save(poke: HairStylist) {
//		hairstylist.append(poke)
//	}
//	
//	func delete(indexOfHairstylist: IndexPath) {
//		hairstylist.remove(at: indexOfHairstylist.row)
//	}
//	
//}
//
//enum HTTPMethod: String {
//	case get = "GET"
//	case post = "POST"
//	case delete = "DELETE"
//	case put = "PUT"
//}
//
//enum NetworkError: Error {
//	case badResponse
//	case otherError
//	case badData
//	case noDecode
//}
