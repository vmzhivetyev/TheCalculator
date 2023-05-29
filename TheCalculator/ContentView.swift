//
//  ContentView.swift
//  TheCalculator
//
//  Created by vmzhivetev on 29.05.2023.
//

import SwiftUI

struct CalculatorView: View {
	@State private var input: String = "42"
	@StateObject private var calculator = Calculator()
	
	var body: some View {
		VStack {
			Text("Result: \(calculator.result)")
				.font(.largeTitle)
				.padding()
			
			TextField("Enter a number", text: $input)
				.textFieldStyle(RoundedBorderTextFieldStyle())
				.multilineTextAlignment(.center)
				.font(.title)
				.padding()
			
			Spacer()
			
			Button(action: {
				if let number = Double(input) {
					calculator.add(number)
				}
			}) {
				Text("Add")
					.frame(maxWidth: .infinity)
					.padding()
					.background(Color.blue)
					.foregroundColor(.white)
					.cornerRadius(10)
					.padding(.horizontal)
			}
			
			Button(action: {
				if let number = Double(input) {
					calculator.subtract(number)
				}
			}) {
				Text("Subtract")
					.frame(maxWidth: .infinity)
					.padding()
					.background(Color.red)
					.foregroundColor(.white)
					.cornerRadius(10)
					.padding(.horizontal)
			}
			
			Button(action: {
				if let number = Double(input) {
					calculator.multiply(number)
				}
			}) {
				Text("Multiply")
					.frame(maxWidth: .infinity)
					.padding()
					.background(Color.green)
					.foregroundColor(.white)
					.cornerRadius(10)
					.padding(.horizontal)
			}
			
			Button(action: {
				if let number = Double(input) {
					do {
						try calculator.divide(number)
					} catch {
						print("Error: \(error.localizedDescription)")
					}
				}
			}) {
				Text("Divide")
					.frame(maxWidth: .infinity)
					.padding()
					.background(Color.orange)
					.foregroundColor(.white)
					.cornerRadius(10)
					.padding(.horizontal)
			}
		}
		.padding()
	}
}

struct CalculatorView_Previews: PreviewProvider {
	static var previews: some View {
		CalculatorView()
	}
}

