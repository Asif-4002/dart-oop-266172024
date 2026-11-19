# Dart OOP Assignment: Kigali Bus Card

## Part 5: Predict the Output

### My Prediction

Expected output:

```text
1
5
```

### Explanation of the First Output

The Bag object starts with 0 items.

When `a.add()` is called, the number of items increases to 1.

Then `a.items = -5` attempts to assign a negative value. However, the setter only accepts values greater than or equal to zero, so it rejects -5.

The value remains 1.

Therefore, the first output is 1.

### Explanation of the Second Output

The BigBag object starts with 0 items.

The BigBag class overrides the `add()` method. Inside this method, `super.add()` is called twice.

- First `b.add()` increases the items from 0 to 2.
- Second `b.add()` increases the items from 2 to 4.
- `b.items = b.items + 1` increases the items from 4 to 5.

Therefore, the second output is 5.

### Final Prediction

```text
1
5
```