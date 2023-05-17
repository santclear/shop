class AuthException implements Exception {
  static const Map<String, String> errors = {
    'EMAIL_EXISTS': 'Email already registered.',
    'OPERATION_NOT_ALLOWED': 'Operation not allowed!',
    'TOO_MANY_ATTEMPTS_TRY_LATER':
        'Access blocked temporarily. Try again later.',
    'EMAIL_NOT_FOUND': 'Email not found.',
    'INVALID_PASSWORD': 'Invalid password.',
    'USER_DISABLED': 'User account has been disabled.',
  };

  final String key;

  AuthException(this.key);

  @override
  String toString() {
    return errors[key] ?? 'An error occurred during the authentication process.';
  }
}
