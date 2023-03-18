# Get BMI Status

How to get Body Mass Index (BMI) status.

## Overview

In this article, we will learn how to get BMI status using ``BmiCalculator/BmiCalculator/getBmiStatus(_:)`` method.

```swift
let bmiCalculator = BmiCalculator()

let status = try bmiCalculator.getBmiStatus(20)
```

The code above, will return:

```swift
BmiStatus.normal
```
