public enum APIError: Error {
  case badURL(String)
  case decodingError(Error)
  case networkError(Error)
  case badStatusCode(Int)
  
  public func getErrorMessage() -> String {
    switch self {
    case .badURL(let badURL):
      return badURL
    case .decodingError(let error):
      return "decoding error: \(error)"
    case .networkError(let error):
      return "network error: \(error)"
    case .badStatusCode(let statusCode):
      return "status code is \(statusCode)"
    }
  }
}
