# Two-Dimensional Array Sorting

Given a two-dimensional array, which can consist of subarrays consisting of numbers or strings or strings and numbers at the same time.
Depending on the input parameters, you need to sort the array in three ways:
1) If a two-dimensional array consists of subarrays of numbers, it is necessary to sort it into a one-dimensional array in ascending order.
2) In the case of a two-dimensional array consisting of subarrays of strings, it is necessary to sort it into a one-dimensional array in ascending alphabetical order.
3) In the case of a two-dimensional array consisting of subarrays of numbers and strings at the same time, it is necessary to return a two-dimensional array consisting of both:
- sorted subarray of numbers in ascending order
- subarray of strings in alphabetical descending order.


### Example 1
```
Input: [[4, 6, 2], [1, 5, 3], [], [8, 2, 7, 9]] 
Output: [1, 2, 2, 3, 4, 5, 6, 7, 8, 9]
```

### Example 2
```
Input: [[“Evan”, “Alex”], [“Ben”], [“Desmond”, “Cris”]] 
Output: [“Alex”, “Ben”, “Cris”, “Desmond”, “Evan”]
```

### Example 3
```
Input: [[4, 6, 2], [1, 5, 3], [“Ben”, “Alex”, “Cris”], [“Desmond”, “Evan”], [8, 2, 7, 9]]
Output: [[1, 2, 2, 3, 4, 5, 6, 7, 8, 9], [“Evan”, “Desmond”, “Cris”, “Ben”, “Alex”]]
```

In the case of an input one-dimensional array, return an empty array: 
Input: [1, 2, 3, “Alex”, “Ben”, 9] -> Output: []
