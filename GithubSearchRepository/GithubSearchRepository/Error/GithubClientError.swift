enum GithubClientError : Error {
  case connectionError(Error)
  case responseParseError(Error)
  case apiError(GithubAPIError)
}
