class LogInWithEmailAndPasswordFailure {
  final String message;

  const LogInWithEmailAndPasswordFailure([this.message = "An Unknown error occured."]);
  factory LogInWithEmailAndPasswordFailure.fromCode(String code) {
    switch (code) {
      case 'bad-credentials':
        return const LogInWithEmailAndPasswordFailure('Wrong email or password.');
      case 'null empty':
        return const LogInWithEmailAndPasswordFailure('Please enter both email and password');
      default:
        return const LogInWithEmailAndPasswordFailure();
    }
  }
}
