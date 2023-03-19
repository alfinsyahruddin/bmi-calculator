import Foundation

public class BmiCalculator {
    
    public init() {}

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

