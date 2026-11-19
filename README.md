
# Dart OOP Assignment: Kigali Bus Card

## Student Information

- Name: Asif Kamal Ahmed Abdalla
- Student ID: 26617/2024

## My Personal Numbers

- D: 17
- L: 7
- Starting Balance: 1170 RWF
- Bus Fare: 217 RWF
- Student Discount: 17%

## Part 1: BusCard

### Why is no setter for balance a good idea for a bus card?

Not having a setter for balance protects the card balance from being changed directly. The balance should only change through controlled methods such as `topUp()` and `pay()`. This prevents invalid changes and protects the card system.

## Part 2: StudentCard

### What does ~/ do?

The `~/` operator performs integer division. It divides two numbers and removes the decimal part.

- `237 * 17 / 100` gives `40.29`.
- `237 * 17 ~/ 100` gives `40`.

The `/` operator returns a decimal result, while `~/` returns an integer.

## Part 3: Program Output

```text
Error: name too short
Owner: Asif Kamal Ahmed Abdalla | Balance: 1170 RWF
Error: top-up must be 500 to 50000 RWF
Topped up 2000 RWF
Paid 217 RWF
Paid 217 RWF
Owner: Asif Kamal Ahmed Abdalla | Balance: 2736 RWF
Student discount: 36 RWF
Paid 181 RWF
Owner: Asif Kamal Ahmed Abdalla | Balance: 989 RWF
Student card: 17% off
```

## Part 4: Bug Hunt

### Five Bugs and Their Fixes

| Bug | Why It Was Wrong | Fix |
|---|---|---|
| 1. Uninitialized fields | Fields were not initialized properly. | Initialize `_brand` and `_battery`. |
| 2. Missing parent constructor | SmartPhone did not initialize the Phone fields. | Use `super(brand, battery)`. |
| 3. Missing restart method in Phone | The parent class did not have a method to override. | Add `restart()` to Phone. |
| 4. Missing battery setter | The battery could not be updated safely. | Add a setter accepting values from 0 to 100. |
| 5. Incorrect getter call | battery is a getter, not a method. | Use `p.battery` instead of `p.battery()`. |

### Line That Was Not a Bug

`p.battery = 100;`

This line was not a bug. It assigns a value using the battery setter.

### Actual Output

```text
100
```

## Part 5: Predict the Output

### My Prediction

```text
1
5
```

### Explanation

The Bag object starts with 0 items. Calling `a.add()` increases it to 1. The setter rejects `-5` because negative values are not allowed. Therefore, the first output is 1.

The BigBag class overrides `add()` and calls `super.add()` twice. Each call increases the item count by 2. After two calls, the count is 4. Adding 1 more makes it 5.

### Actual Output

```text
1
5
```

### Was My Prediction Correct?

Yes. My prediction was correct. The actual output matches my predicted output.
