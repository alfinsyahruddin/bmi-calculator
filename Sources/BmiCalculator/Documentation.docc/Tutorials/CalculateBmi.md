# Calculate BMI

How to calculate Body Mass Index (BMI).

## Overview

In this article, we will learn how to calculate BMI using ``BmiCalculator/BmiCalculator/calculateBmi(weight:height:)`` method.

```swift
let bmiCalculator = BmiCalculator()

let result = try bmiCalculator.calculateBmi(
    weight: 60,
    height: 1.6
)
```

The code above, will return:

```swift
BmiResult(
    index: 23.43,
    status: .normal
)
```
