//
//  TheCalculatorTests.swift
//  TheCalculatorTests
//
//  Created by vmzhivetev on 29.05.2023.
//

import XCTest
@testable import TheCalculator

class CalculatorTests: XCTestCase {
	
	var calculator: Calculator!
	
	override func setUp() {
		super.setUp()
		calculator = Calculator()
	}
	
	override func tearDown() {
		calculator = nil
		super.tearDown()
	}
	
	func testAddition() {
		calculator.add(5)
		XCTAssertEqual(calculator.result, 5, "Addition test failed")
	}
	
	func testSubtraction() {
		calculator.subtract(3)
		XCTAssertEqual(calculator.result, -3, "Subtraction test failed")
	}
	
	func testMultiplication() {
		calculator.add(2)
		calculator.multiply(4)
		XCTAssertEqual(calculator.result, 8, "Multiplication test failed")
	}
	
	func testDivision() throws {
		calculator.add(10)
		try calculator.divide(2)
		XCTAssertEqual(calculator.result, 5, "Division test failed")
	}
	
	func testDivisionByZero() {
		XCTAssertThrowsError(try calculator.divide(0), "Division by zero test failed") { error in
			XCTAssertEqual(error as? CalculationError, CalculationError.divisionByZero)
		}
	}
}
