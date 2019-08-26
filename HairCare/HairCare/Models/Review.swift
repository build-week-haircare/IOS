//
//  Review.swift
//  HairCare
//
//  Created by Taylor Lyles on 8/26/19.
//  Copyright © 2019 Taylor Lyles. All rights reserved.
//

import Foundation

struct Review: Codable {
	let id: Int
	let userId: Int
	let ratings: Int
	let review: String
	let bookId: Int
	
	enum CodingKeys: String, CodingKey {
		case id
		case userId = "reviewer"
		case ratings
		case review
		case bookId
	}
}
