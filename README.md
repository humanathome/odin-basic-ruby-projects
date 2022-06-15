## The Odin Project: Basic Ruby projects
Few small projects for practicing basic Ruby knowledge.

### Assignments:

### Caesar cipher
- Implement a `caesar_cipher` method that takes in a string and the shift factor and then outputs the modified string
- Wrap from 'z' to 'a'
- Keep the same case
- Ignore all the characters that are not letters

### Substrings
- Implement a method `substrings` that takes a word as the first argument and then an array of valid substrings 
(your dictionary) as the second argument
- It should return a hash listing each substring (case insensitive) that was found in the original string and how many
times it was found.
- Make sure your method can handle multiple words
- Note: the order of your keys might be different

### Stock picker
- Implement a method `stock_picker` that takes in an array of stock prices, one for each hypothetical day. It should 
return a pair of days representing the best day to buy and the best day to sell. Days start at 0.
- Pay attention to edge cases like when the lowest day is the last day or the highest day is the first day
- Note: you need to buy before you can sell
