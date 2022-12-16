enum LoginState {
  initial, // Login's initial state
  loading, // While credentials are being validating
  failure, // when login attempt has failed
  success,
}
