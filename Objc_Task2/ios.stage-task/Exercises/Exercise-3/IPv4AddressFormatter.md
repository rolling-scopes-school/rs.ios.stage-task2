# IPv4 Address

Given an array of numbers, you need to convert it to the IPv4 address format string:
```
Input: [192, 168, 1, 1] Output: “192.168.1.1”
```

If the number of elements in the array is less than 4, then the remaining space is filled with zeros:
```
Input: [192]
Output: “192.0.0.0”
```

Note: the last 32-bits (that correspond to IPv4 address) can need up to 15 characters (as IPv4 uses 4 groups of 1 byte and is formatted as 4 decimal numbers in the range 0-255 separated by dots (the . character), so the maximum is DDD.DDD.DDD.DDD). Negative numbers are not available for input.
