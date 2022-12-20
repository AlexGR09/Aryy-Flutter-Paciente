enum SigninState {
  clear,
  initial, // Sign in's initial state
  loading, // While credentials are being validating
  failure, // when login attempt has failed
  success,
  passwordMismatch,
  passwordNolongEnough,
  passwordConfirmationNolongEnough
}
