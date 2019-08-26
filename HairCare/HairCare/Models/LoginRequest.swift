//
//  LoginRequest.swift
//  HairCare
//
//  Created by Taylor Lyles on 8/26/19.
//  Copyright © 2019 Taylor Lyles. All rights reserved.
//

import Foundation

struct LoginRequest: Codable {
	let email: String
	let password: String
}
