import Foundation

public class BmiCalculator {
    public init() {}
    
    /**
     This method is for calculating Body Mass Index (BMI).
     
     - Parameters:
         - weight: The weight of body (in centimeters).
         - height: The height of body (in meters).
      
     - Returns: The result of BMI calculation.
     
     - Throws: `BmiError.invalidIndex` if failed to get status due to invalid BMI index.
     */
    public func calculateBmi(
        weight: Double,
        height: Double
    ) throws -> BmiResult {
        let index = weight / pow(height, 2)
        
        return BmiResult(
            index: index,
            status: try self.getBmiStatus(index)
        )
    }
    
    /**
     This method is for get status of Body Mass Index (BMI).
     
     - Parameters:
         - index: The Body Mass Index (BMI).
     
     - Returns: The status of Body Mass Index (BMI).
     
     - Throws: `BmiError.invalidIndex` if failed to get status due to invalid BMI index.
     */
    public func getBmiStatus(_ index: Double) throws -> BmiStatus {
        switch index {
        case ..<18.5:
            return .underWeight
        case 18.5..<25:
            return .normal
        case 25..<30:
            return .overWeight
        case 30...:
            return .obese
        default:
            throw BmiError.invalidIndex
        }
    }
}

