//
//  User.swift
//  HairCare
//
//  Created by Taylor Lyles on 8/26/19.
//  Copyright © 2019 Taylor Lyles. All rights reserved.
//

import Foundation

struct User: Codable {
	let id: Int
	let firstName: String
	let lastName: String
	let email: String
}
