sealed class ScanException implements Exception {
  const ScanException(this.message);

  final String message;

  @override
  String toString() => 'ScanException: $message';
}

final class UnexpectedEndOfComment extends ScanException {
  const UnexpectedEndOfComment() : super('Unexpected end of comment');
}

final class UnexpectedEndOfString extends ScanException {
  const UnexpectedEndOfString() : super('Unexpected end of string');
}

final class UnexpectedEndOfNumber extends ScanException {
  const UnexpectedEndOfNumber() : super('Unexpected end of number');
}

final class InvalidUnicode extends ScanException {
  const InvalidUnicode() : super('Invalid Unicode escape sequence');
}

final class InvalidEscapeCharacter extends ScanException {
  const InvalidEscapeCharacter() : super('Invalid escape character');
}

final class InvalidCharacter extends ScanException {
  const InvalidCharacter() : super('Invalid character');
}
