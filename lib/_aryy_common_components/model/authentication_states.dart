enum Authentication {
  uninitialized, //  waiting to see if the user is authenticated or not on app start.
  unauthenticated, // not authenticated
  authenticated, // successfully authenticated
  loading, // waiting to persist/delete a token
}
