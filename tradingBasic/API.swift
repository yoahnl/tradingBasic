// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public struct UsersPermissionsLoginInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - identifier
  ///   - password
  ///   - provider
  public init(identifier: String, password: String, provider: Swift.Optional<String?> = nil) {
    graphQLMap = ["identifier": identifier, "password": password, "provider": provider]
  }

  public var identifier: String {
    get {
      return graphQLMap["identifier"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "identifier")
    }
  }

  public var password: String {
    get {
      return graphQLMap["password"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "password")
    }
  }

  public var provider: Swift.Optional<String?> {
    get {
      return graphQLMap["provider"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "provider")
    }
  }
}

public struct updateCompanyInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - where
  ///   - data
  public init(`where`: Swift.Optional<InputID?> = nil, data: Swift.Optional<editCompanyInput?> = nil) {
    graphQLMap = ["where": `where`, "data": data]
  }

  public var `where`: Swift.Optional<InputID?> {
    get {
      return graphQLMap["where"] as? Swift.Optional<InputID?> ?? Swift.Optional<InputID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "where")
    }
  }

  public var data: Swift.Optional<editCompanyInput?> {
    get {
      return graphQLMap["data"] as? Swift.Optional<editCompanyInput?> ?? Swift.Optional<editCompanyInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "data")
    }
  }
}

public struct InputID: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - id
  public init(id: GraphQLID) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct editCompanyInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - symbol
  ///   - price
  ///   - logo
  ///   - name
  ///   - firstPrice
  ///   - publishedAt
  ///   - createdBy
  ///   - updatedBy
  public init(symbol: Swift.Optional<String?> = nil, price: Swift.Optional<Double?> = nil, logo: Swift.Optional<String?> = nil, name: Swift.Optional<String?> = nil, firstPrice: Swift.Optional<Double?> = nil, publishedAt: Swift.Optional<String?> = nil, createdBy: Swift.Optional<GraphQLID?> = nil, updatedBy: Swift.Optional<GraphQLID?> = nil) {
    graphQLMap = ["symbol": symbol, "price": price, "logo": logo, "Name": name, "firstPrice": firstPrice, "published_at": publishedAt, "created_by": createdBy, "updated_by": updatedBy]
  }

  public var symbol: Swift.Optional<String?> {
    get {
      return graphQLMap["symbol"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "symbol")
    }
  }

  public var price: Swift.Optional<Double?> {
    get {
      return graphQLMap["price"] as? Swift.Optional<Double?> ?? Swift.Optional<Double?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "price")
    }
  }

  public var logo: Swift.Optional<String?> {
    get {
      return graphQLMap["logo"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "logo")
    }
  }

  public var name: Swift.Optional<String?> {
    get {
      return graphQLMap["Name"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Name")
    }
  }

  public var firstPrice: Swift.Optional<Double?> {
    get {
      return graphQLMap["firstPrice"] as? Swift.Optional<Double?> ?? Swift.Optional<Double?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "firstPrice")
    }
  }

  public var publishedAt: Swift.Optional<String?> {
    get {
      return graphQLMap["published_at"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "published_at")
    }
  }

  public var createdBy: Swift.Optional<GraphQLID?> {
    get {
      return graphQLMap["created_by"] as? Swift.Optional<GraphQLID?> ?? Swift.Optional<GraphQLID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "created_by")
    }
  }

  public var updatedBy: Swift.Optional<GraphQLID?> {
    get {
      return graphQLMap["updated_by"] as? Swift.Optional<GraphQLID?> ?? Swift.Optional<GraphQLID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "updated_by")
    }
  }
}

public struct updateStockInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - where
  ///   - data
  public init(`where`: Swift.Optional<InputID?> = nil, data: Swift.Optional<editStockInput?> = nil) {
    graphQLMap = ["where": `where`, "data": data]
  }

  public var `where`: Swift.Optional<InputID?> {
    get {
      return graphQLMap["where"] as? Swift.Optional<InputID?> ?? Swift.Optional<InputID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "where")
    }
  }

  public var data: Swift.Optional<editStockInput?> {
    get {
      return graphQLMap["data"] as? Swift.Optional<editStockInput?> ?? Swift.Optional<editStockInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "data")
    }
  }
}

public struct editStockInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - numberStocks
  ///   - company
  ///   - usersPermissionsUser
  ///   - publishedAt
  ///   - createdBy
  ///   - updatedBy
  public init(numberStocks: Swift.Optional<Int?> = nil, company: Swift.Optional<GraphQLID?> = nil, usersPermissionsUser: Swift.Optional<GraphQLID?> = nil, publishedAt: Swift.Optional<String?> = nil, createdBy: Swift.Optional<GraphQLID?> = nil, updatedBy: Swift.Optional<GraphQLID?> = nil) {
    graphQLMap = ["number_stocks": numberStocks, "company": company, "users_permissions_user": usersPermissionsUser, "published_at": publishedAt, "created_by": createdBy, "updated_by": updatedBy]
  }

  public var numberStocks: Swift.Optional<Int?> {
    get {
      return graphQLMap["number_stocks"] as? Swift.Optional<Int?> ?? Swift.Optional<Int?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "number_stocks")
    }
  }

  public var company: Swift.Optional<GraphQLID?> {
    get {
      return graphQLMap["company"] as? Swift.Optional<GraphQLID?> ?? Swift.Optional<GraphQLID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "company")
    }
  }

  public var usersPermissionsUser: Swift.Optional<GraphQLID?> {
    get {
      return graphQLMap["users_permissions_user"] as? Swift.Optional<GraphQLID?> ?? Swift.Optional<GraphQLID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "users_permissions_user")
    }
  }

  public var publishedAt: Swift.Optional<String?> {
    get {
      return graphQLMap["published_at"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "published_at")
    }
  }

  public var createdBy: Swift.Optional<GraphQLID?> {
    get {
      return graphQLMap["created_by"] as? Swift.Optional<GraphQLID?> ?? Swift.Optional<GraphQLID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "created_by")
    }
  }

  public var updatedBy: Swift.Optional<GraphQLID?> {
    get {
      return graphQLMap["updated_by"] as? Swift.Optional<GraphQLID?> ?? Swift.Optional<GraphQLID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "updated_by")
    }
  }
}

public struct createStockInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - data
  public init(data: Swift.Optional<StockInput?> = nil) {
    graphQLMap = ["data": data]
  }

  public var data: Swift.Optional<StockInput?> {
    get {
      return graphQLMap["data"] as? Swift.Optional<StockInput?> ?? Swift.Optional<StockInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "data")
    }
  }
}

public struct StockInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - numberStocks
  ///   - company
  ///   - usersPermissionsUser
  ///   - publishedAt
  ///   - createdBy
  ///   - updatedBy
  public init(numberStocks: Swift.Optional<Int?> = nil, company: Swift.Optional<GraphQLID?> = nil, usersPermissionsUser: Swift.Optional<GraphQLID?> = nil, publishedAt: Swift.Optional<String?> = nil, createdBy: Swift.Optional<GraphQLID?> = nil, updatedBy: Swift.Optional<GraphQLID?> = nil) {
    graphQLMap = ["number_stocks": numberStocks, "company": company, "users_permissions_user": usersPermissionsUser, "published_at": publishedAt, "created_by": createdBy, "updated_by": updatedBy]
  }

  public var numberStocks: Swift.Optional<Int?> {
    get {
      return graphQLMap["number_stocks"] as? Swift.Optional<Int?> ?? Swift.Optional<Int?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "number_stocks")
    }
  }

  public var company: Swift.Optional<GraphQLID?> {
    get {
      return graphQLMap["company"] as? Swift.Optional<GraphQLID?> ?? Swift.Optional<GraphQLID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "company")
    }
  }

  public var usersPermissionsUser: Swift.Optional<GraphQLID?> {
    get {
      return graphQLMap["users_permissions_user"] as? Swift.Optional<GraphQLID?> ?? Swift.Optional<GraphQLID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "users_permissions_user")
    }
  }

  public var publishedAt: Swift.Optional<String?> {
    get {
      return graphQLMap["published_at"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "published_at")
    }
  }

  public var createdBy: Swift.Optional<GraphQLID?> {
    get {
      return graphQLMap["created_by"] as? Swift.Optional<GraphQLID?> ?? Swift.Optional<GraphQLID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "created_by")
    }
  }

  public var updatedBy: Swift.Optional<GraphQLID?> {
    get {
      return graphQLMap["updated_by"] as? Swift.Optional<GraphQLID?> ?? Swift.Optional<GraphQLID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "updated_by")
    }
  }
}

public final class LoginMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation Login($input: UsersPermissionsLoginInput!) {
      login(input: $input) {
        __typename
        jwt
        user {
          __typename
          id
          email
          username
        }
      }
    }
    """

  public let operationName: String = "Login"

  public var input: UsersPermissionsLoginInput

  public init(input: UsersPermissionsLoginInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("login", arguments: ["input": GraphQLVariable("input")], type: .nonNull(.object(Login.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(login: Login) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "login": login.resultMap])
    }

    public var login: Login {
      get {
        return Login(unsafeResultMap: resultMap["login"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "login")
      }
    }

    public struct Login: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["UsersPermissionsLoginPayload"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("jwt", type: .scalar(String.self)),
          GraphQLField("user", type: .nonNull(.object(User.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(jwt: String? = nil, user: User) {
        self.init(unsafeResultMap: ["__typename": "UsersPermissionsLoginPayload", "jwt": jwt, "user": user.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var jwt: String? {
        get {
          return resultMap["jwt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "jwt")
        }
      }

      public var user: User {
        get {
          return User(unsafeResultMap: resultMap["user"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "user")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["UsersPermissionsMe"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("email", type: .nonNull(.scalar(String.self))),
            GraphQLField("username", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, email: String, username: String) {
          self.init(unsafeResultMap: ["__typename": "UsersPermissionsMe", "id": id, "email": email, "username": username])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var email: String {
          get {
            return resultMap["email"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "email")
          }
        }

        public var username: String {
          get {
            return resultMap["username"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "username")
          }
        }
      }
    }
  }
}

public final class UserInfoQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query userInfo($id: ID!) {
      user(id: $id) {
        __typename
        username
        email
      }
    }
    """

  public let operationName: String = "userInfo"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("user", arguments: ["id": GraphQLVariable("id")], type: .object(User.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(user: User? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "user": user.flatMap { (value: User) -> ResultMap in value.resultMap }])
    }

    public var user: User? {
      get {
        return (resultMap["user"] as? ResultMap).flatMap { User(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "user")
      }
    }

    public struct User: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["UsersPermissionsUser"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("email", type: .nonNull(.scalar(String.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(username: String, email: String) {
        self.init(unsafeResultMap: ["__typename": "UsersPermissionsUser", "username": username, "email": email])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var username: String {
        get {
          return resultMap["username"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "username")
        }
      }

      public var email: String {
        get {
          return resultMap["email"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "email")
        }
      }
    }
  }
}

public final class GetUsersStocksQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query getUsersStocks($input: ID!) {
      stocks(where: {users_permissions_user: {id: $input}}) {
        __typename
        id
        number_stocks
        company {
          __typename
          id
          Name
          logo
          price
          symbol
          firstPrice
        }
        users_permissions_user {
          __typename
          id
          username
        }
      }
    }
    """

  public let operationName: String = "getUsersStocks"

  public var input: GraphQLID

  public init(input: GraphQLID) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("stocks", arguments: ["where": ["users_permissions_user": ["id": GraphQLVariable("input")]]], type: .list(.object(Stock.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(stocks: [Stock?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "stocks": stocks.flatMap { (value: [Stock?]) -> [ResultMap?] in value.map { (value: Stock?) -> ResultMap? in value.flatMap { (value: Stock) -> ResultMap in value.resultMap } } }])
    }

    public var stocks: [Stock?]? {
      get {
        return (resultMap["stocks"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Stock?] in value.map { (value: ResultMap?) -> Stock? in value.flatMap { (value: ResultMap) -> Stock in Stock(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Stock?]) -> [ResultMap?] in value.map { (value: Stock?) -> ResultMap? in value.flatMap { (value: Stock) -> ResultMap in value.resultMap } } }, forKey: "stocks")
      }
    }

    public struct Stock: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Stocks"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("number_stocks", type: .scalar(Int.self)),
          GraphQLField("company", type: .object(Company.selections)),
          GraphQLField("users_permissions_user", type: .object(UsersPermissionsUser.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, numberStocks: Int? = nil, company: Company? = nil, usersPermissionsUser: UsersPermissionsUser? = nil) {
        self.init(unsafeResultMap: ["__typename": "Stocks", "id": id, "number_stocks": numberStocks, "company": company.flatMap { (value: Company) -> ResultMap in value.resultMap }, "users_permissions_user": usersPermissionsUser.flatMap { (value: UsersPermissionsUser) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var numberStocks: Int? {
        get {
          return resultMap["number_stocks"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "number_stocks")
        }
      }

      public var company: Company? {
        get {
          return (resultMap["company"] as? ResultMap).flatMap { Company(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "company")
        }
      }

      public var usersPermissionsUser: UsersPermissionsUser? {
        get {
          return (resultMap["users_permissions_user"] as? ResultMap).flatMap { UsersPermissionsUser(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "users_permissions_user")
        }
      }

      public struct Company: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Company"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("Name", type: .scalar(String.self)),
            GraphQLField("logo", type: .scalar(String.self)),
            GraphQLField("price", type: .scalar(Double.self)),
            GraphQLField("symbol", type: .scalar(String.self)),
            GraphQLField("firstPrice", type: .scalar(Double.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, name: String? = nil, logo: String? = nil, price: Double? = nil, symbol: String? = nil, firstPrice: Double? = nil) {
          self.init(unsafeResultMap: ["__typename": "Company", "id": id, "Name": name, "logo": logo, "price": price, "symbol": symbol, "firstPrice": firstPrice])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return resultMap["Name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "Name")
          }
        }

        public var logo: String? {
          get {
            return resultMap["logo"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "logo")
          }
        }

        public var price: Double? {
          get {
            return resultMap["price"] as? Double
          }
          set {
            resultMap.updateValue(newValue, forKey: "price")
          }
        }

        public var symbol: String? {
          get {
            return resultMap["symbol"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "symbol")
          }
        }

        public var firstPrice: Double? {
          get {
            return resultMap["firstPrice"] as? Double
          }
          set {
            resultMap.updateValue(newValue, forKey: "firstPrice")
          }
        }
      }

      public struct UsersPermissionsUser: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["UsersPermissionsUser"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("username", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, username: String) {
          self.init(unsafeResultMap: ["__typename": "UsersPermissionsUser", "id": id, "username": username])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return resultMap["username"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "username")
          }
        }
      }
    }
  }
}

public final class GetCompanyQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query getCompany {
      companies {
        __typename
        id
        Name
        logo
        price
        symbol
        firstPrice
      }
    }
    """

  public let operationName: String = "getCompany"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("companies", type: .list(.object(Company.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(companies: [Company?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "companies": companies.flatMap { (value: [Company?]) -> [ResultMap?] in value.map { (value: Company?) -> ResultMap? in value.flatMap { (value: Company) -> ResultMap in value.resultMap } } }])
    }

    public var companies: [Company?]? {
      get {
        return (resultMap["companies"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Company?] in value.map { (value: ResultMap?) -> Company? in value.flatMap { (value: ResultMap) -> Company in Company(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Company?]) -> [ResultMap?] in value.map { (value: Company?) -> ResultMap? in value.flatMap { (value: Company) -> ResultMap in value.resultMap } } }, forKey: "companies")
      }
    }

    public struct Company: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Company"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("Name", type: .scalar(String.self)),
          GraphQLField("logo", type: .scalar(String.self)),
          GraphQLField("price", type: .scalar(Double.self)),
          GraphQLField("symbol", type: .scalar(String.self)),
          GraphQLField("firstPrice", type: .scalar(Double.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, name: String? = nil, logo: String? = nil, price: Double? = nil, symbol: String? = nil, firstPrice: Double? = nil) {
        self.init(unsafeResultMap: ["__typename": "Company", "id": id, "Name": name, "logo": logo, "price": price, "symbol": symbol, "firstPrice": firstPrice])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return resultMap["Name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "Name")
        }
      }

      public var logo: String? {
        get {
          return resultMap["logo"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "logo")
        }
      }

      public var price: Double? {
        get {
          return resultMap["price"] as? Double
        }
        set {
          resultMap.updateValue(newValue, forKey: "price")
        }
      }

      public var symbol: String? {
        get {
          return resultMap["symbol"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "symbol")
        }
      }

      public var firstPrice: Double? {
        get {
          return resultMap["firstPrice"] as? Double
        }
        set {
          resultMap.updateValue(newValue, forKey: "firstPrice")
        }
      }
    }
  }
}

public final class UpdateCompayPriceMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation updateCompayPrice($input: updateCompanyInput!) {
      updateCompany(input: $input) {
        __typename
        company {
          __typename
          id
          price
        }
      }
    }
    """

  public let operationName: String = "updateCompayPrice"

  public var input: updateCompanyInput

  public init(input: updateCompanyInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("updateCompany", arguments: ["input": GraphQLVariable("input")], type: .object(UpdateCompany.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updateCompany: UpdateCompany? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "updateCompany": updateCompany.flatMap { (value: UpdateCompany) -> ResultMap in value.resultMap }])
    }

    public var updateCompany: UpdateCompany? {
      get {
        return (resultMap["updateCompany"] as? ResultMap).flatMap { UpdateCompany(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "updateCompany")
      }
    }

    public struct UpdateCompany: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["updateCompanyPayload"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("company", type: .object(Company.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(company: Company? = nil) {
        self.init(unsafeResultMap: ["__typename": "updateCompanyPayload", "company": company.flatMap { (value: Company) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var company: Company? {
        get {
          return (resultMap["company"] as? ResultMap).flatMap { Company(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "company")
        }
      }

      public struct Company: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Company"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("price", type: .scalar(Double.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, price: Double? = nil) {
          self.init(unsafeResultMap: ["__typename": "Company", "id": id, "price": price])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var price: Double? {
          get {
            return resultMap["price"] as? Double
          }
          set {
            resultMap.updateValue(newValue, forKey: "price")
          }
        }
      }
    }
  }
}

public final class UpdateUserStocksMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation updateUserStocks($input: updateStockInput) {
      updateStock(input: $input) {
        __typename
        stock {
          __typename
          users_permissions_user {
            __typename
            username
          }
          company {
            __typename
            Name
          }
          number_stocks
        }
      }
    }
    """

  public let operationName: String = "updateUserStocks"

  public var input: updateStockInput?

  public init(input: updateStockInput? = nil) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("updateStock", arguments: ["input": GraphQLVariable("input")], type: .object(UpdateStock.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updateStock: UpdateStock? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "updateStock": updateStock.flatMap { (value: UpdateStock) -> ResultMap in value.resultMap }])
    }

    public var updateStock: UpdateStock? {
      get {
        return (resultMap["updateStock"] as? ResultMap).flatMap { UpdateStock(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "updateStock")
      }
    }

    public struct UpdateStock: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["updateStockPayload"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("stock", type: .object(Stock.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(stock: Stock? = nil) {
        self.init(unsafeResultMap: ["__typename": "updateStockPayload", "stock": stock.flatMap { (value: Stock) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var stock: Stock? {
        get {
          return (resultMap["stock"] as? ResultMap).flatMap { Stock(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "stock")
        }
      }

      public struct Stock: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Stocks"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("users_permissions_user", type: .object(UsersPermissionsUser.selections)),
            GraphQLField("company", type: .object(Company.selections)),
            GraphQLField("number_stocks", type: .scalar(Int.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(usersPermissionsUser: UsersPermissionsUser? = nil, company: Company? = nil, numberStocks: Int? = nil) {
          self.init(unsafeResultMap: ["__typename": "Stocks", "users_permissions_user": usersPermissionsUser.flatMap { (value: UsersPermissionsUser) -> ResultMap in value.resultMap }, "company": company.flatMap { (value: Company) -> ResultMap in value.resultMap }, "number_stocks": numberStocks])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var usersPermissionsUser: UsersPermissionsUser? {
          get {
            return (resultMap["users_permissions_user"] as? ResultMap).flatMap { UsersPermissionsUser(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "users_permissions_user")
          }
        }

        public var company: Company? {
          get {
            return (resultMap["company"] as? ResultMap).flatMap { Company(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "company")
          }
        }

        public var numberStocks: Int? {
          get {
            return resultMap["number_stocks"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "number_stocks")
          }
        }

        public struct UsersPermissionsUser: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["UsersPermissionsUser"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("username", type: .nonNull(.scalar(String.self))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(username: String) {
            self.init(unsafeResultMap: ["__typename": "UsersPermissionsUser", "username": username])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var username: String {
            get {
              return resultMap["username"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "username")
            }
          }
        }

        public struct Company: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Company"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("Name", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(name: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "Company", "Name": name])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var name: String? {
            get {
              return resultMap["Name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "Name")
            }
          }
        }
      }
    }
  }
}

public final class CreateUserStocksMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation createUserStocks($input: createStockInput) {
      createStock(input: $input) {
        __typename
        stock {
          __typename
          number_stocks
          company {
            __typename
            Name
          }
          users_permissions_user {
            __typename
            username
          }
        }
      }
    }
    """

  public let operationName: String = "createUserStocks"

  public var input: createStockInput?

  public init(input: createStockInput? = nil) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("createStock", arguments: ["input": GraphQLVariable("input")], type: .object(CreateStock.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(createStock: CreateStock? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "createStock": createStock.flatMap { (value: CreateStock) -> ResultMap in value.resultMap }])
    }

    public var createStock: CreateStock? {
      get {
        return (resultMap["createStock"] as? ResultMap).flatMap { CreateStock(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "createStock")
      }
    }

    public struct CreateStock: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["createStockPayload"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("stock", type: .object(Stock.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(stock: Stock? = nil) {
        self.init(unsafeResultMap: ["__typename": "createStockPayload", "stock": stock.flatMap { (value: Stock) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var stock: Stock? {
        get {
          return (resultMap["stock"] as? ResultMap).flatMap { Stock(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "stock")
        }
      }

      public struct Stock: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Stocks"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("number_stocks", type: .scalar(Int.self)),
            GraphQLField("company", type: .object(Company.selections)),
            GraphQLField("users_permissions_user", type: .object(UsersPermissionsUser.selections)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(numberStocks: Int? = nil, company: Company? = nil, usersPermissionsUser: UsersPermissionsUser? = nil) {
          self.init(unsafeResultMap: ["__typename": "Stocks", "number_stocks": numberStocks, "company": company.flatMap { (value: Company) -> ResultMap in value.resultMap }, "users_permissions_user": usersPermissionsUser.flatMap { (value: UsersPermissionsUser) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var numberStocks: Int? {
          get {
            return resultMap["number_stocks"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "number_stocks")
          }
        }

        public var company: Company? {
          get {
            return (resultMap["company"] as? ResultMap).flatMap { Company(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "company")
          }
        }

        public var usersPermissionsUser: UsersPermissionsUser? {
          get {
            return (resultMap["users_permissions_user"] as? ResultMap).flatMap { UsersPermissionsUser(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "users_permissions_user")
          }
        }

        public struct Company: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Company"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("Name", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(name: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "Company", "Name": name])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var name: String? {
            get {
              return resultMap["Name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "Name")
            }
          }
        }

        public struct UsersPermissionsUser: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["UsersPermissionsUser"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("username", type: .nonNull(.scalar(String.self))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(username: String) {
            self.init(unsafeResultMap: ["__typename": "UsersPermissionsUser", "username": username])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var username: String {
            get {
              return resultMap["username"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "username")
            }
          }
        }
      }
    }
  }
}
