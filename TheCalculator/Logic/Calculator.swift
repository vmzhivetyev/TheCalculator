//
//  Calculator.swift
//  TheCalculator
//
//  Created by vmzhivetev on 29.05.2023.
//

import Foundation
import Combine

class Calculator: ObservableObject {
	@Published var result: Double = 0.0
	
	func add(_ value: Double) {
		result += value
	}
	
	func subtract(_ value: Double) {
		result -= value
	}
	
	func multiply(_ value: Double) {
		result *= value
	}
	
	func divide(_ value: Double) throws {
		guard value != 0 else {
			throw CalculationError.divisionByZero
		}
		result /= value
	}
}

enum CalculationError: Error {
	case divisionByZero
}
