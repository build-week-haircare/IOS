//
//  RegisterRequest.swift
//  HairCare
//
//  Created by Taylor Lyles on 8/26/19.
//  Copyright © 2019 Taylor Lyles. All rights reserved.
//

import Foundation

struct RegisterRequest: Codable {
	let firstName: String
	let lastName: String
	let email: String
	let password: String
}
