import XCTest
@testable import BmiCalculator

final class BmiCalculatorTests: XCTestCase {
    let sut = BmiCalculator()
    
    func test_calculateBmi() throws {
        let result = try sut.calculateBmi(
            weight: 60,
            height: 1.6
        )
        let expected = BmiResult(
            index: 23.43,
            status: .normal
        )
        
        XCTAssertEqual(result.index, expected.index, accuracy: 0.01)
        XCTAssertEqual(result.status, expected.status)
    }
    
    func test_getBmiStatus() throws {
        XCTAssertEqual(try sut.getBmiStatus(10), .underWeight)
        XCTAssertEqual(try sut.getBmiStatus(18.5), .normal)
        XCTAssertEqual(try sut.getBmiStatus(25), .overWeight)
        XCTAssertEqual(try sut.getBmiStatus(30), .obese)
    }
}
