/// Converts a word to a number.
String wordToNumberConversion(String word) {
  switch (word) {
    case 'nine':
      return '9';
    case 'ten':
      return '10';
    case 'eleven':
      return '11';
    case 'twelve':
      return '12';
    default:
      return '0';
  }
}
