//  This file was automatically generated and should not be edited.

import AWSAppSync

public struct CreateUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(email: String, supportChatId: GraphQLID) {
    graphQLMap = ["email": email, "supportChatId": supportChatId]
  }

  public var email: String {
    get {
      return graphQLMap["email"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "email")
    }
  }

  public var supportChatId: GraphQLID {
    get {
      return graphQLMap["supportChatId"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "supportChatId")
    }
  }
}

public struct ModelUserConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(supportChatId: ModelIDInput? = nil, and: [ModelUserConditionInput?]? = nil, or: [ModelUserConditionInput?]? = nil, not: ModelUserConditionInput? = nil) {
    graphQLMap = ["supportChatId": supportChatId, "and": and, "or": or, "not": not]
  }

  public var supportChatId: ModelIDInput? {
    get {
      return graphQLMap["supportChatId"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "supportChatId")
    }
  }

  public var and: [ModelUserConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelUserConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelUserConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelUserConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelUserConditionInput? {
    get {
      return graphQLMap["not"] as! ModelUserConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelIDInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: GraphQLID? = nil, eq: GraphQLID? = nil, le: GraphQLID? = nil, lt: GraphQLID? = nil, ge: GraphQLID? = nil, gt: GraphQLID? = nil, contains: GraphQLID? = nil, notContains: GraphQLID? = nil, between: [GraphQLID?]? = nil, beginsWith: GraphQLID? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
  }

  public var ne: GraphQLID? {
    get {
      return graphQLMap["ne"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: GraphQLID? {
    get {
      return graphQLMap["eq"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: GraphQLID? {
    get {
      return graphQLMap["le"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: GraphQLID? {
    get {
      return graphQLMap["lt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: GraphQLID? {
    get {
      return graphQLMap["ge"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: GraphQLID? {
    get {
      return graphQLMap["gt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: GraphQLID? {
    get {
      return graphQLMap["contains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: GraphQLID? {
    get {
      return graphQLMap["notContains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [GraphQLID?]? {
    get {
      return graphQLMap["between"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: GraphQLID? {
    get {
      return graphQLMap["beginsWith"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }

  public var size: ModelSizeInput? {
    get {
      return graphQLMap["size"] as! ModelSizeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public enum ModelAttributeTypes: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  public typealias RawValue = String
  case binary
  case binarySet
  case bool
  case list
  case map
  case number
  case numberSet
  case string
  case stringSet
  case null
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "binary": self = .binary
      case "binarySet": self = .binarySet
      case "bool": self = .bool
      case "list": self = .list
      case "map": self = .map
      case "number": self = .number
      case "numberSet": self = .numberSet
      case "string": self = .string
      case "stringSet": self = .stringSet
      case "_null": self = .null
      default: self = .unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .binary: return "binary"
      case .binarySet: return "binarySet"
      case .bool: return "bool"
      case .list: return "list"
      case .map: return "map"
      case .number: return "number"
      case .numberSet: return "numberSet"
      case .string: return "string"
      case .stringSet: return "stringSet"
      case .null: return "_null"
      case .unknown(let value): return value
    }
  }

  public static func == (lhs: ModelAttributeTypes, rhs: ModelAttributeTypes) -> Bool {
    switch (lhs, rhs) {
      case (.binary, .binary): return true
      case (.binarySet, .binarySet): return true
      case (.bool, .bool): return true
      case (.list, .list): return true
      case (.map, .map): return true
      case (.number, .number): return true
      case (.numberSet, .numberSet): return true
      case (.string, .string): return true
      case (.stringSet, .stringSet): return true
      case (.null, .null): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

public struct ModelSizeInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Int? = nil, eq: Int? = nil, le: Int? = nil, lt: Int? = nil, ge: Int? = nil, gt: Int? = nil, between: [Int?]? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between]
  }

  public var ne: Int? {
    get {
      return graphQLMap["ne"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Int? {
    get {
      return graphQLMap["eq"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Int? {
    get {
      return graphQLMap["le"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Int? {
    get {
      return graphQLMap["lt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Int? {
    get {
      return graphQLMap["ge"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Int? {
    get {
      return graphQLMap["gt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [Int?]? {
    get {
      return graphQLMap["between"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }
}

public struct UpdateUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(email: String, supportChatId: GraphQLID? = nil) {
    graphQLMap = ["email": email, "supportChatId": supportChatId]
  }

  public var email: String {
    get {
      return graphQLMap["email"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "email")
    }
  }

  public var supportChatId: GraphQLID? {
    get {
      return graphQLMap["supportChatId"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "supportChatId")
    }
  }
}

public struct DeleteUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(email: String) {
    graphQLMap = ["email": email]
  }

  public var email: String {
    get {
      return graphQLMap["email"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "email")
    }
  }
}

public struct CreateChatInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, userEmail: String) {
    graphQLMap = ["id": id, "userEmail": userEmail]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var userEmail: String {
    get {
      return graphQLMap["userEmail"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userEmail")
    }
  }
}

public struct ModelChatConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(userEmail: ModelStringInput? = nil, and: [ModelChatConditionInput?]? = nil, or: [ModelChatConditionInput?]? = nil, not: ModelChatConditionInput? = nil) {
    graphQLMap = ["userEmail": userEmail, "and": and, "or": or, "not": not]
  }

  public var userEmail: ModelStringInput? {
    get {
      return graphQLMap["userEmail"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userEmail")
    }
  }

  public var and: [ModelChatConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelChatConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelChatConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelChatConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelChatConditionInput? {
    get {
      return graphQLMap["not"] as! ModelChatConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelStringInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: String? = nil, eq: String? = nil, le: String? = nil, lt: String? = nil, ge: String? = nil, gt: String? = nil, contains: String? = nil, notContains: String? = nil, between: [String?]? = nil, beginsWith: String? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
  }

  public var ne: String? {
    get {
      return graphQLMap["ne"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: String? {
    get {
      return graphQLMap["eq"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: String? {
    get {
      return graphQLMap["le"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: String? {
    get {
      return graphQLMap["lt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: String? {
    get {
      return graphQLMap["ge"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: String? {
    get {
      return graphQLMap["gt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: String? {
    get {
      return graphQLMap["contains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: String? {
    get {
      return graphQLMap["notContains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [String?]? {
    get {
      return graphQLMap["between"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: String? {
    get {
      return graphQLMap["beginsWith"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }

  public var size: ModelSizeInput? {
    get {
      return graphQLMap["size"] as! ModelSizeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public struct UpdateChatInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, userEmail: String? = nil) {
    graphQLMap = ["id": id, "userEmail": userEmail]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var userEmail: String? {
    get {
      return graphQLMap["userEmail"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userEmail")
    }
  }
}

public struct DeleteChatInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct CreateMessageInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, chatId: GraphQLID, content: String, when: String, userEmail: String? = nil) {
    graphQLMap = ["id": id, "chatId": chatId, "content": content, "when": when, "userEmail": userEmail]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var chatId: GraphQLID {
    get {
      return graphQLMap["chatId"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "chatId")
    }
  }

  public var content: String {
    get {
      return graphQLMap["content"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "content")
    }
  }

  public var when: String {
    get {
      return graphQLMap["when"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "when")
    }
  }

  public var userEmail: String? {
    get {
      return graphQLMap["userEmail"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userEmail")
    }
  }
}

public struct ModelMessageConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(chatId: ModelIDInput? = nil, content: ModelStringInput? = nil, when: ModelStringInput? = nil, userEmail: ModelStringInput? = nil, and: [ModelMessageConditionInput?]? = nil, or: [ModelMessageConditionInput?]? = nil, not: ModelMessageConditionInput? = nil) {
    graphQLMap = ["chatId": chatId, "content": content, "when": when, "userEmail": userEmail, "and": and, "or": or, "not": not]
  }

  public var chatId: ModelIDInput? {
    get {
      return graphQLMap["chatId"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "chatId")
    }
  }

  public var content: ModelStringInput? {
    get {
      return graphQLMap["content"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "content")
    }
  }

  public var when: ModelStringInput? {
    get {
      return graphQLMap["when"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "when")
    }
  }

  public var userEmail: ModelStringInput? {
    get {
      return graphQLMap["userEmail"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userEmail")
    }
  }

  public var and: [ModelMessageConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelMessageConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelMessageConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelMessageConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelMessageConditionInput? {
    get {
      return graphQLMap["not"] as! ModelMessageConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct UpdateMessageInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, chatId: GraphQLID? = nil, content: String? = nil, when: String? = nil, userEmail: String? = nil) {
    graphQLMap = ["id": id, "chatId": chatId, "content": content, "when": when, "userEmail": userEmail]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var chatId: GraphQLID? {
    get {
      return graphQLMap["chatId"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "chatId")
    }
  }

  public var content: String? {
    get {
      return graphQLMap["content"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "content")
    }
  }

  public var when: String? {
    get {
      return graphQLMap["when"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "when")
    }
  }

  public var userEmail: String? {
    get {
      return graphQLMap["userEmail"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userEmail")
    }
  }
}

public struct DeleteMessageInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct ModelUserFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(email: ModelStringInput? = nil, supportChatId: ModelIDInput? = nil, and: [ModelUserFilterInput?]? = nil, or: [ModelUserFilterInput?]? = nil, not: ModelUserFilterInput? = nil) {
    graphQLMap = ["email": email, "supportChatId": supportChatId, "and": and, "or": or, "not": not]
  }

  public var email: ModelStringInput? {
    get {
      return graphQLMap["email"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "email")
    }
  }

  public var supportChatId: ModelIDInput? {
    get {
      return graphQLMap["supportChatId"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "supportChatId")
    }
  }

  public var and: [ModelUserFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelUserFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelUserFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelUserFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelUserFilterInput? {
    get {
      return graphQLMap["not"] as! ModelUserFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public enum ModelSortDirection: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  public typealias RawValue = String
  case asc
  case desc
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "ASC": self = .asc
      case "DESC": self = .desc
      default: self = .unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .asc: return "ASC"
      case .desc: return "DESC"
      case .unknown(let value): return value
    }
  }

  public static func == (lhs: ModelSortDirection, rhs: ModelSortDirection) -> Bool {
    switch (lhs, rhs) {
      case (.asc, .asc): return true
      case (.desc, .desc): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

public struct ModelChatFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, userEmail: ModelStringInput? = nil, and: [ModelChatFilterInput?]? = nil, or: [ModelChatFilterInput?]? = nil, not: ModelChatFilterInput? = nil) {
    graphQLMap = ["id": id, "userEmail": userEmail, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var userEmail: ModelStringInput? {
    get {
      return graphQLMap["userEmail"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userEmail")
    }
  }

  public var and: [ModelChatFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelChatFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelChatFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelChatFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelChatFilterInput? {
    get {
      return graphQLMap["not"] as! ModelChatFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelMessageFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, chatId: ModelIDInput? = nil, content: ModelStringInput? = nil, when: ModelStringInput? = nil, userEmail: ModelStringInput? = nil, and: [ModelMessageFilterInput?]? = nil, or: [ModelMessageFilterInput?]? = nil, not: ModelMessageFilterInput? = nil) {
    graphQLMap = ["id": id, "chatId": chatId, "content": content, "when": when, "userEmail": userEmail, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var chatId: ModelIDInput? {
    get {
      return graphQLMap["chatId"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "chatId")
    }
  }

  public var content: ModelStringInput? {
    get {
      return graphQLMap["content"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "content")
    }
  }

  public var when: ModelStringInput? {
    get {
      return graphQLMap["when"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "when")
    }
  }

  public var userEmail: ModelStringInput? {
    get {
      return graphQLMap["userEmail"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userEmail")
    }
  }

  public var and: [ModelMessageFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelMessageFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelMessageFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelMessageFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelMessageFilterInput? {
    get {
      return graphQLMap["not"] as! ModelMessageFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public final class CreateUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateUser($input: CreateUserInput!, $condition: ModelUserConditionInput) {\n  createUser(input: $input, condition: $condition) {\n    __typename\n    email\n    supportChatId\n    chat {\n      __typename\n      id\n      userEmail\n      messages {\n        __typename\n        items {\n          __typename\n          id\n          chatId\n          content\n          when\n          userEmail\n        }\n        nextToken\n      }\n    }\n  }\n}"

  public var input: CreateUserInput
  public var condition: ModelUserConditionInput?

  public init(input: CreateUserInput, condition: ModelUserConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createUser", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createUser: CreateUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createUser": createUser.flatMap { $0.snapshot }])
    }

    public var createUser: CreateUser? {
      get {
        return (snapshot["createUser"] as? Snapshot).flatMap { CreateUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createUser")
      }
    }

    public struct CreateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("email", type: .nonNull(.scalar(String.self))),
        GraphQLField("supportChatId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("chat", type: .object(Chat.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(email: String, supportChatId: GraphQLID, chat: Chat? = nil) {
        self.init(snapshot: ["__typename": "User", "email": email, "supportChatId": supportChatId, "chat": chat.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var email: String {
        get {
          return snapshot["email"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var supportChatId: GraphQLID {
        get {
          return snapshot["supportChatId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "supportChatId")
        }
      }

      public var chat: Chat? {
        get {
          return (snapshot["chat"] as? Snapshot).flatMap { Chat(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "chat")
        }
      }

      public struct Chat: GraphQLSelectionSet {
        public static let possibleTypes = ["Chat"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("userEmail", type: .nonNull(.scalar(String.self))),
          GraphQLField("messages", type: .object(Message.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, userEmail: String, messages: Message? = nil) {
          self.init(snapshot: ["__typename": "Chat", "id": id, "userEmail": userEmail, "messages": messages.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var userEmail: String {
          get {
            return snapshot["userEmail"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "userEmail")
          }
        }

        public var messages: Message? {
          get {
            return (snapshot["messages"] as? Snapshot).flatMap { Message(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "messages")
          }
        }

        public struct Message: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelMessageConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("items", type: .list(.object(Item.selections))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(items: [Item?]? = nil, nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelMessageConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var items: [Item?]? {
            get {
              return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
            }
            set {
              snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public struct Item: GraphQLSelectionSet {
            public static let possibleTypes = ["Message"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("chatId", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("content", type: .nonNull(.scalar(String.self))),
              GraphQLField("when", type: .nonNull(.scalar(String.self))),
              GraphQLField("userEmail", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, chatId: GraphQLID, content: String, when: String, userEmail: String? = nil) {
              self.init(snapshot: ["__typename": "Message", "id": id, "chatId": chatId, "content": content, "when": when, "userEmail": userEmail])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var chatId: GraphQLID {
              get {
                return snapshot["chatId"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "chatId")
              }
            }

            public var content: String {
              get {
                return snapshot["content"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "content")
              }
            }

            public var when: String {
              get {
                return snapshot["when"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "when")
              }
            }

            public var userEmail: String? {
              get {
                return snapshot["userEmail"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "userEmail")
              }
            }
          }
        }
      }
    }
  }
}

public final class UpdateUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateUser($input: UpdateUserInput!, $condition: ModelUserConditionInput) {\n  updateUser(input: $input, condition: $condition) {\n    __typename\n    email\n    supportChatId\n    chat {\n      __typename\n      id\n      userEmail\n      messages {\n        __typename\n        items {\n          __typename\n          id\n          chatId\n          content\n          when\n          userEmail\n        }\n        nextToken\n      }\n    }\n  }\n}"

  public var input: UpdateUserInput
  public var condition: ModelUserConditionInput?

  public init(input: UpdateUserInput, condition: ModelUserConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateUser", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateUser: UpdateUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateUser": updateUser.flatMap { $0.snapshot }])
    }

    public var updateUser: UpdateUser? {
      get {
        return (snapshot["updateUser"] as? Snapshot).flatMap { UpdateUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateUser")
      }
    }

    public struct UpdateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("email", type: .nonNull(.scalar(String.self))),
        GraphQLField("supportChatId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("chat", type: .object(Chat.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(email: String, supportChatId: GraphQLID, chat: Chat? = nil) {
        self.init(snapshot: ["__typename": "User", "email": email, "supportChatId": supportChatId, "chat": chat.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var email: String {
        get {
          return snapshot["email"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var supportChatId: GraphQLID {
        get {
          return snapshot["supportChatId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "supportChatId")
        }
      }

      public var chat: Chat? {
        get {
          return (snapshot["chat"] as? Snapshot).flatMap { Chat(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "chat")
        }
      }

      public struct Chat: GraphQLSelectionSet {
        public static let possibleTypes = ["Chat"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("userEmail", type: .nonNull(.scalar(String.self))),
          GraphQLField("messages", type: .object(Message.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, userEmail: String, messages: Message? = nil) {
          self.init(snapshot: ["__typename": "Chat", "id": id, "userEmail": userEmail, "messages": messages.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var userEmail: String {
          get {
            return snapshot["userEmail"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "userEmail")
          }
        }

        public var messages: Message? {
          get {
            return (snapshot["messages"] as? Snapshot).flatMap { Message(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "messages")
          }
        }

        public struct Message: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelMessageConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("items", type: .list(.object(Item.selections))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(items: [Item?]? = nil, nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelMessageConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var items: [Item?]? {
            get {
              return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
            }
            set {
              snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public struct Item: GraphQLSelectionSet {
            public static let possibleTypes = ["Message"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("chatId", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("content", type: .nonNull(.scalar(String.self))),
              GraphQLField("when", type: .nonNull(.scalar(String.self))),
              GraphQLField("userEmail", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, chatId: GraphQLID, content: String, when: String, userEmail: String? = nil) {
              self.init(snapshot: ["__typename": "Message", "id": id, "chatId": chatId, "content": content, "when": when, "userEmail": userEmail])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var chatId: GraphQLID {
              get {
                return snapshot["chatId"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "chatId")
              }
            }

            public var content: String {
              get {
                return snapshot["content"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "content")
              }
            }

            public var when: String {
              get {
                return snapshot["when"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "when")
              }
            }

            public var userEmail: String? {
              get {
                return snapshot["userEmail"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "userEmail")
              }
            }
          }
        }
      }
    }
  }
}

public final class DeleteUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteUser($input: DeleteUserInput!, $condition: ModelUserConditionInput) {\n  deleteUser(input: $input, condition: $condition) {\n    __typename\n    email\n    supportChatId\n    chat {\n      __typename\n      id\n      userEmail\n      messages {\n        __typename\n        items {\n          __typename\n          id\n          chatId\n          content\n          when\n          userEmail\n        }\n        nextToken\n      }\n    }\n  }\n}"

  public var input: DeleteUserInput
  public var condition: ModelUserConditionInput?

  public init(input: DeleteUserInput, condition: ModelUserConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteUser", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteUser: DeleteUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteUser": deleteUser.flatMap { $0.snapshot }])
    }

    public var deleteUser: DeleteUser? {
      get {
        return (snapshot["deleteUser"] as? Snapshot).flatMap { DeleteUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteUser")
      }
    }

    public struct DeleteUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("email", type: .nonNull(.scalar(String.self))),
        GraphQLField("supportChatId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("chat", type: .object(Chat.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(email: String, supportChatId: GraphQLID, chat: Chat? = nil) {
        self.init(snapshot: ["__typename": "User", "email": email, "supportChatId": supportChatId, "chat": chat.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var email: String {
        get {
          return snapshot["email"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var supportChatId: GraphQLID {
        get {
          return snapshot["supportChatId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "supportChatId")
        }
      }

      public var chat: Chat? {
        get {
          return (snapshot["chat"] as? Snapshot).flatMap { Chat(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "chat")
        }
      }

      public struct Chat: GraphQLSelectionSet {
        public static let possibleTypes = ["Chat"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("userEmail", type: .nonNull(.scalar(String.self))),
          GraphQLField("messages", type: .object(Message.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, userEmail: String, messages: Message? = nil) {
          self.init(snapshot: ["__typename": "Chat", "id": id, "userEmail": userEmail, "messages": messages.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var userEmail: String {
          get {
            return snapshot["userEmail"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "userEmail")
          }
        }

        public var messages: Message? {
          get {
            return (snapshot["messages"] as? Snapshot).flatMap { Message(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "messages")
          }
        }

        public struct Message: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelMessageConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("items", type: .list(.object(Item.selections))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(items: [Item?]? = nil, nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelMessageConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var items: [Item?]? {
            get {
              return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
            }
            set {
              snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public struct Item: GraphQLSelectionSet {
            public static let possibleTypes = ["Message"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("chatId", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("content", type: .nonNull(.scalar(String.self))),
              GraphQLField("when", type: .nonNull(.scalar(String.self))),
              GraphQLField("userEmail", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, chatId: GraphQLID, content: String, when: String, userEmail: String? = nil) {
              self.init(snapshot: ["__typename": "Message", "id": id, "chatId": chatId, "content": content, "when": when, "userEmail": userEmail])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var chatId: GraphQLID {
              get {
                return snapshot["chatId"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "chatId")
              }
            }

            public var content: String {
              get {
                return snapshot["content"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "content")
              }
            }

            public var when: String {
              get {
                return snapshot["when"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "when")
              }
            }

            public var userEmail: String? {
              get {
                return snapshot["userEmail"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "userEmail")
              }
            }
          }
        }
      }
    }
  }
}

public final class CreateChatMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateChat($input: CreateChatInput!, $condition: ModelChatConditionInput) {\n  createChat(input: $input, condition: $condition) {\n    __typename\n    id\n    userEmail\n    messages {\n      __typename\n      items {\n        __typename\n        id\n        chatId\n        content\n        when\n        userEmail\n      }\n      nextToken\n    }\n  }\n}"

  public var input: CreateChatInput
  public var condition: ModelChatConditionInput?

  public init(input: CreateChatInput, condition: ModelChatConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createChat", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateChat.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createChat: CreateChat? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createChat": createChat.flatMap { $0.snapshot }])
    }

    public var createChat: CreateChat? {
      get {
        return (snapshot["createChat"] as? Snapshot).flatMap { CreateChat(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createChat")
      }
    }

    public struct CreateChat: GraphQLSelectionSet {
      public static let possibleTypes = ["Chat"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userEmail", type: .nonNull(.scalar(String.self))),
        GraphQLField("messages", type: .object(Message.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userEmail: String, messages: Message? = nil) {
        self.init(snapshot: ["__typename": "Chat", "id": id, "userEmail": userEmail, "messages": messages.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userEmail: String {
        get {
          return snapshot["userEmail"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userEmail")
        }
      }

      public var messages: Message? {
        get {
          return (snapshot["messages"] as? Snapshot).flatMap { Message(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "messages")
        }
      }

      public struct Message: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelMessageConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelMessageConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Message"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("chatId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("content", type: .nonNull(.scalar(String.self))),
            GraphQLField("when", type: .nonNull(.scalar(String.self))),
            GraphQLField("userEmail", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, chatId: GraphQLID, content: String, when: String, userEmail: String? = nil) {
            self.init(snapshot: ["__typename": "Message", "id": id, "chatId": chatId, "content": content, "when": when, "userEmail": userEmail])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var chatId: GraphQLID {
            get {
              return snapshot["chatId"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "chatId")
            }
          }

          public var content: String {
            get {
              return snapshot["content"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "content")
            }
          }

          public var when: String {
            get {
              return snapshot["when"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "when")
            }
          }

          public var userEmail: String? {
            get {
              return snapshot["userEmail"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "userEmail")
            }
          }
        }
      }
    }
  }
}

public final class UpdateChatMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateChat($input: UpdateChatInput!, $condition: ModelChatConditionInput) {\n  updateChat(input: $input, condition: $condition) {\n    __typename\n    id\n    userEmail\n    messages {\n      __typename\n      items {\n        __typename\n        id\n        chatId\n        content\n        when\n        userEmail\n      }\n      nextToken\n    }\n  }\n}"

  public var input: UpdateChatInput
  public var condition: ModelChatConditionInput?

  public init(input: UpdateChatInput, condition: ModelChatConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateChat", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateChat.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateChat: UpdateChat? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateChat": updateChat.flatMap { $0.snapshot }])
    }

    public var updateChat: UpdateChat? {
      get {
        return (snapshot["updateChat"] as? Snapshot).flatMap { UpdateChat(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateChat")
      }
    }

    public struct UpdateChat: GraphQLSelectionSet {
      public static let possibleTypes = ["Chat"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userEmail", type: .nonNull(.scalar(String.self))),
        GraphQLField("messages", type: .object(Message.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userEmail: String, messages: Message? = nil) {
        self.init(snapshot: ["__typename": "Chat", "id": id, "userEmail": userEmail, "messages": messages.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userEmail: String {
        get {
          return snapshot["userEmail"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userEmail")
        }
      }

      public var messages: Message? {
        get {
          return (snapshot["messages"] as? Snapshot).flatMap { Message(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "messages")
        }
      }

      public struct Message: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelMessageConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelMessageConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Message"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("chatId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("content", type: .nonNull(.scalar(String.self))),
            GraphQLField("when", type: .nonNull(.scalar(String.self))),
            GraphQLField("userEmail", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, chatId: GraphQLID, content: String, when: String, userEmail: String? = nil) {
            self.init(snapshot: ["__typename": "Message", "id": id, "chatId": chatId, "content": content, "when": when, "userEmail": userEmail])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var chatId: GraphQLID {
            get {
              return snapshot["chatId"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "chatId")
            }
          }

          public var content: String {
            get {
              return snapshot["content"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "content")
            }
          }

          public var when: String {
            get {
              return snapshot["when"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "when")
            }
          }

          public var userEmail: String? {
            get {
              return snapshot["userEmail"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "userEmail")
            }
          }
        }
      }
    }
  }
}

public final class DeleteChatMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteChat($input: DeleteChatInput!, $condition: ModelChatConditionInput) {\n  deleteChat(input: $input, condition: $condition) {\n    __typename\n    id\n    userEmail\n    messages {\n      __typename\n      items {\n        __typename\n        id\n        chatId\n        content\n        when\n        userEmail\n      }\n      nextToken\n    }\n  }\n}"

  public var input: DeleteChatInput
  public var condition: ModelChatConditionInput?

  public init(input: DeleteChatInput, condition: ModelChatConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteChat", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteChat.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteChat: DeleteChat? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteChat": deleteChat.flatMap { $0.snapshot }])
    }

    public var deleteChat: DeleteChat? {
      get {
        return (snapshot["deleteChat"] as? Snapshot).flatMap { DeleteChat(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteChat")
      }
    }

    public struct DeleteChat: GraphQLSelectionSet {
      public static let possibleTypes = ["Chat"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userEmail", type: .nonNull(.scalar(String.self))),
        GraphQLField("messages", type: .object(Message.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userEmail: String, messages: Message? = nil) {
        self.init(snapshot: ["__typename": "Chat", "id": id, "userEmail": userEmail, "messages": messages.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userEmail: String {
        get {
          return snapshot["userEmail"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userEmail")
        }
      }

      public var messages: Message? {
        get {
          return (snapshot["messages"] as? Snapshot).flatMap { Message(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "messages")
        }
      }

      public struct Message: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelMessageConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelMessageConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Message"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("chatId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("content", type: .nonNull(.scalar(String.self))),
            GraphQLField("when", type: .nonNull(.scalar(String.self))),
            GraphQLField("userEmail", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, chatId: GraphQLID, content: String, when: String, userEmail: String? = nil) {
            self.init(snapshot: ["__typename": "Message", "id": id, "chatId": chatId, "content": content, "when": when, "userEmail": userEmail])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var chatId: GraphQLID {
            get {
              return snapshot["chatId"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "chatId")
            }
          }

          public var content: String {
            get {
              return snapshot["content"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "content")
            }
          }

          public var when: String {
            get {
              return snapshot["when"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "when")
            }
          }

          public var userEmail: String? {
            get {
              return snapshot["userEmail"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "userEmail")
            }
          }
        }
      }
    }
  }
}

public final class CreateMessageMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateMessage($input: CreateMessageInput!, $condition: ModelMessageConditionInput) {\n  createMessage(input: $input, condition: $condition) {\n    __typename\n    id\n    chatId\n    content\n    when\n    userEmail\n  }\n}"

  public var input: CreateMessageInput
  public var condition: ModelMessageConditionInput?

  public init(input: CreateMessageInput, condition: ModelMessageConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createMessage", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateMessage.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createMessage: CreateMessage? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createMessage": createMessage.flatMap { $0.snapshot }])
    }

    public var createMessage: CreateMessage? {
      get {
        return (snapshot["createMessage"] as? Snapshot).flatMap { CreateMessage(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createMessage")
      }
    }

    public struct CreateMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["Message"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("chatId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
        GraphQLField("when", type: .nonNull(.scalar(String.self))),
        GraphQLField("userEmail", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, chatId: GraphQLID, content: String, when: String, userEmail: String? = nil) {
        self.init(snapshot: ["__typename": "Message", "id": id, "chatId": chatId, "content": content, "when": when, "userEmail": userEmail])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var chatId: GraphQLID {
        get {
          return snapshot["chatId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "chatId")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var when: String {
        get {
          return snapshot["when"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "when")
        }
      }

      public var userEmail: String? {
        get {
          return snapshot["userEmail"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userEmail")
        }
      }
    }
  }
}

public final class UpdateMessageMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateMessage($input: UpdateMessageInput!, $condition: ModelMessageConditionInput) {\n  updateMessage(input: $input, condition: $condition) {\n    __typename\n    id\n    chatId\n    content\n    when\n    userEmail\n  }\n}"

  public var input: UpdateMessageInput
  public var condition: ModelMessageConditionInput?

  public init(input: UpdateMessageInput, condition: ModelMessageConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateMessage", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateMessage.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateMessage: UpdateMessage? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateMessage": updateMessage.flatMap { $0.snapshot }])
    }

    public var updateMessage: UpdateMessage? {
      get {
        return (snapshot["updateMessage"] as? Snapshot).flatMap { UpdateMessage(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateMessage")
      }
    }

    public struct UpdateMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["Message"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("chatId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
        GraphQLField("when", type: .nonNull(.scalar(String.self))),
        GraphQLField("userEmail", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, chatId: GraphQLID, content: String, when: String, userEmail: String? = nil) {
        self.init(snapshot: ["__typename": "Message", "id": id, "chatId": chatId, "content": content, "when": when, "userEmail": userEmail])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var chatId: GraphQLID {
        get {
          return snapshot["chatId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "chatId")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var when: String {
        get {
          return snapshot["when"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "when")
        }
      }

      public var userEmail: String? {
        get {
          return snapshot["userEmail"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userEmail")
        }
      }
    }
  }
}

public final class DeleteMessageMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteMessage($input: DeleteMessageInput!, $condition: ModelMessageConditionInput) {\n  deleteMessage(input: $input, condition: $condition) {\n    __typename\n    id\n    chatId\n    content\n    when\n    userEmail\n  }\n}"

  public var input: DeleteMessageInput
  public var condition: ModelMessageConditionInput?

  public init(input: DeleteMessageInput, condition: ModelMessageConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteMessage", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteMessage.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteMessage: DeleteMessage? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteMessage": deleteMessage.flatMap { $0.snapshot }])
    }

    public var deleteMessage: DeleteMessage? {
      get {
        return (snapshot["deleteMessage"] as? Snapshot).flatMap { DeleteMessage(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteMessage")
      }
    }

    public struct DeleteMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["Message"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("chatId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
        GraphQLField("when", type: .nonNull(.scalar(String.self))),
        GraphQLField("userEmail", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, chatId: GraphQLID, content: String, when: String, userEmail: String? = nil) {
        self.init(snapshot: ["__typename": "Message", "id": id, "chatId": chatId, "content": content, "when": when, "userEmail": userEmail])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var chatId: GraphQLID {
        get {
          return snapshot["chatId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "chatId")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var when: String {
        get {
          return snapshot["when"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "when")
        }
      }

      public var userEmail: String? {
        get {
          return snapshot["userEmail"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userEmail")
        }
      }
    }
  }
}

public final class GetUserQuery: GraphQLQuery {
  public static let operationString =
    "query GetUser($email: String!) {\n  getUser(email: $email) {\n    __typename\n    email\n    supportChatId\n    chat {\n      __typename\n      id\n      userEmail\n      messages {\n        __typename\n        items {\n          __typename\n          id\n          chatId\n          content\n          when\n          userEmail\n        }\n        nextToken\n      }\n    }\n  }\n}"

  public var email: String

  public init(email: String) {
    self.email = email
  }

  public var variables: GraphQLMap? {
    return ["email": email]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getUser", arguments: ["email": GraphQLVariable("email")], type: .object(GetUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getUser: GetUser? = nil) {
      self.init(snapshot: ["__typename": "Query", "getUser": getUser.flatMap { $0.snapshot }])
    }

    public var getUser: GetUser? {
      get {
        return (snapshot["getUser"] as? Snapshot).flatMap { GetUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getUser")
      }
    }

    public struct GetUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("email", type: .nonNull(.scalar(String.self))),
        GraphQLField("supportChatId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("chat", type: .object(Chat.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(email: String, supportChatId: GraphQLID, chat: Chat? = nil) {
        self.init(snapshot: ["__typename": "User", "email": email, "supportChatId": supportChatId, "chat": chat.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var email: String {
        get {
          return snapshot["email"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var supportChatId: GraphQLID {
        get {
          return snapshot["supportChatId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "supportChatId")
        }
      }

      public var chat: Chat? {
        get {
          return (snapshot["chat"] as? Snapshot).flatMap { Chat(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "chat")
        }
      }

      public struct Chat: GraphQLSelectionSet {
        public static let possibleTypes = ["Chat"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("userEmail", type: .nonNull(.scalar(String.self))),
          GraphQLField("messages", type: .object(Message.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, userEmail: String, messages: Message? = nil) {
          self.init(snapshot: ["__typename": "Chat", "id": id, "userEmail": userEmail, "messages": messages.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var userEmail: String {
          get {
            return snapshot["userEmail"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "userEmail")
          }
        }

        public var messages: Message? {
          get {
            return (snapshot["messages"] as? Snapshot).flatMap { Message(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "messages")
          }
        }

        public struct Message: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelMessageConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("items", type: .list(.object(Item.selections))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(items: [Item?]? = nil, nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelMessageConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var items: [Item?]? {
            get {
              return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
            }
            set {
              snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public struct Item: GraphQLSelectionSet {
            public static let possibleTypes = ["Message"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("chatId", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("content", type: .nonNull(.scalar(String.self))),
              GraphQLField("when", type: .nonNull(.scalar(String.self))),
              GraphQLField("userEmail", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, chatId: GraphQLID, content: String, when: String, userEmail: String? = nil) {
              self.init(snapshot: ["__typename": "Message", "id": id, "chatId": chatId, "content": content, "when": when, "userEmail": userEmail])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var chatId: GraphQLID {
              get {
                return snapshot["chatId"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "chatId")
              }
            }

            public var content: String {
              get {
                return snapshot["content"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "content")
              }
            }

            public var when: String {
              get {
                return snapshot["when"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "when")
              }
            }

            public var userEmail: String? {
              get {
                return snapshot["userEmail"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "userEmail")
              }
            }
          }
        }
      }
    }
  }
}

public final class ListUsersQuery: GraphQLQuery {
  public static let operationString =
    "query ListUsers($email: String, $filter: ModelUserFilterInput, $limit: Int, $nextToken: String, $sortDirection: ModelSortDirection) {\n  listUsers(email: $email, filter: $filter, limit: $limit, nextToken: $nextToken, sortDirection: $sortDirection) {\n    __typename\n    items {\n      __typename\n      email\n      supportChatId\n      chat {\n        __typename\n        id\n        userEmail\n        messages {\n          __typename\n          items {\n            __typename\n            id\n            chatId\n            content\n            when\n            userEmail\n          }\n          nextToken\n        }\n      }\n    }\n    nextToken\n  }\n}"

  public var email: String?
  public var filter: ModelUserFilterInput?
  public var limit: Int?
  public var nextToken: String?
  public var sortDirection: ModelSortDirection?

  public init(email: String? = nil, filter: ModelUserFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil, sortDirection: ModelSortDirection? = nil) {
    self.email = email
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
    self.sortDirection = sortDirection
  }

  public var variables: GraphQLMap? {
    return ["email": email, "filter": filter, "limit": limit, "nextToken": nextToken, "sortDirection": sortDirection]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listUsers", arguments: ["email": GraphQLVariable("email"), "filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken"), "sortDirection": GraphQLVariable("sortDirection")], type: .object(ListUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listUsers: ListUser? = nil) {
      self.init(snapshot: ["__typename": "Query", "listUsers": listUsers.flatMap { $0.snapshot }])
    }

    public var listUsers: ListUser? {
      get {
        return (snapshot["listUsers"] as? Snapshot).flatMap { ListUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listUsers")
      }
    }

    public struct ListUser: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelUserConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelUserConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("email", type: .nonNull(.scalar(String.self))),
          GraphQLField("supportChatId", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("chat", type: .object(Chat.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(email: String, supportChatId: GraphQLID, chat: Chat? = nil) {
          self.init(snapshot: ["__typename": "User", "email": email, "supportChatId": supportChatId, "chat": chat.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var email: String {
          get {
            return snapshot["email"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "email")
          }
        }

        public var supportChatId: GraphQLID {
          get {
            return snapshot["supportChatId"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "supportChatId")
          }
        }

        public var chat: Chat? {
          get {
            return (snapshot["chat"] as? Snapshot).flatMap { Chat(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "chat")
          }
        }

        public struct Chat: GraphQLSelectionSet {
          public static let possibleTypes = ["Chat"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("userEmail", type: .nonNull(.scalar(String.self))),
            GraphQLField("messages", type: .object(Message.selections)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, userEmail: String, messages: Message? = nil) {
            self.init(snapshot: ["__typename": "Chat", "id": id, "userEmail": userEmail, "messages": messages.flatMap { $0.snapshot }])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var userEmail: String {
            get {
              return snapshot["userEmail"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "userEmail")
            }
          }

          public var messages: Message? {
            get {
              return (snapshot["messages"] as? Snapshot).flatMap { Message(snapshot: $0) }
            }
            set {
              snapshot.updateValue(newValue?.snapshot, forKey: "messages")
            }
          }

          public struct Message: GraphQLSelectionSet {
            public static let possibleTypes = ["ModelMessageConnection"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("items", type: .list(.object(Item.selections))),
              GraphQLField("nextToken", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(items: [Item?]? = nil, nextToken: String? = nil) {
              self.init(snapshot: ["__typename": "ModelMessageConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var items: [Item?]? {
              get {
                return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
              }
              set {
                snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
              }
            }

            public var nextToken: String? {
              get {
                return snapshot["nextToken"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "nextToken")
              }
            }

            public struct Item: GraphQLSelectionSet {
              public static let possibleTypes = ["Message"]

              public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                GraphQLField("chatId", type: .nonNull(.scalar(GraphQLID.self))),
                GraphQLField("content", type: .nonNull(.scalar(String.self))),
                GraphQLField("when", type: .nonNull(.scalar(String.self))),
                GraphQLField("userEmail", type: .scalar(String.self)),
              ]

              public var snapshot: Snapshot

              public init(snapshot: Snapshot) {
                self.snapshot = snapshot
              }

              public init(id: GraphQLID, chatId: GraphQLID, content: String, when: String, userEmail: String? = nil) {
                self.init(snapshot: ["__typename": "Message", "id": id, "chatId": chatId, "content": content, "when": when, "userEmail": userEmail])
              }

              public var __typename: String {
                get {
                  return snapshot["__typename"]! as! String
                }
                set {
                  snapshot.updateValue(newValue, forKey: "__typename")
                }
              }

              public var id: GraphQLID {
                get {
                  return snapshot["id"]! as! GraphQLID
                }
                set {
                  snapshot.updateValue(newValue, forKey: "id")
                }
              }

              public var chatId: GraphQLID {
                get {
                  return snapshot["chatId"]! as! GraphQLID
                }
                set {
                  snapshot.updateValue(newValue, forKey: "chatId")
                }
              }

              public var content: String {
                get {
                  return snapshot["content"]! as! String
                }
                set {
                  snapshot.updateValue(newValue, forKey: "content")
                }
              }

              public var when: String {
                get {
                  return snapshot["when"]! as! String
                }
                set {
                  snapshot.updateValue(newValue, forKey: "when")
                }
              }

              public var userEmail: String? {
                get {
                  return snapshot["userEmail"] as? String
                }
                set {
                  snapshot.updateValue(newValue, forKey: "userEmail")
                }
              }
            }
          }
        }
      }
    }
  }
}

public final class GetChatQuery: GraphQLQuery {
  public static let operationString =
    "query GetChat($id: ID!) {\n  getChat(id: $id) {\n    __typename\n    id\n    userEmail\n    messages {\n      __typename\n      items {\n        __typename\n        id\n        chatId\n        content\n        when\n        userEmail\n      }\n      nextToken\n    }\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getChat", arguments: ["id": GraphQLVariable("id")], type: .object(GetChat.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getChat: GetChat? = nil) {
      self.init(snapshot: ["__typename": "Query", "getChat": getChat.flatMap { $0.snapshot }])
    }

    public var getChat: GetChat? {
      get {
        return (snapshot["getChat"] as? Snapshot).flatMap { GetChat(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getChat")
      }
    }

    public struct GetChat: GraphQLSelectionSet {
      public static let possibleTypes = ["Chat"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userEmail", type: .nonNull(.scalar(String.self))),
        GraphQLField("messages", type: .object(Message.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userEmail: String, messages: Message? = nil) {
        self.init(snapshot: ["__typename": "Chat", "id": id, "userEmail": userEmail, "messages": messages.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userEmail: String {
        get {
          return snapshot["userEmail"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userEmail")
        }
      }

      public var messages: Message? {
        get {
          return (snapshot["messages"] as? Snapshot).flatMap { Message(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "messages")
        }
      }

      public struct Message: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelMessageConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelMessageConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Message"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("chatId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("content", type: .nonNull(.scalar(String.self))),
            GraphQLField("when", type: .nonNull(.scalar(String.self))),
            GraphQLField("userEmail", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, chatId: GraphQLID, content: String, when: String, userEmail: String? = nil) {
            self.init(snapshot: ["__typename": "Message", "id": id, "chatId": chatId, "content": content, "when": when, "userEmail": userEmail])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var chatId: GraphQLID {
            get {
              return snapshot["chatId"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "chatId")
            }
          }

          public var content: String {
            get {
              return snapshot["content"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "content")
            }
          }

          public var when: String {
            get {
              return snapshot["when"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "when")
            }
          }

          public var userEmail: String? {
            get {
              return snapshot["userEmail"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "userEmail")
            }
          }
        }
      }
    }
  }
}

public final class ListChatsQuery: GraphQLQuery {
  public static let operationString =
    "query ListChats($filter: ModelChatFilterInput, $limit: Int, $nextToken: String) {\n  listChats(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      userEmail\n      messages {\n        __typename\n        items {\n          __typename\n          id\n          chatId\n          content\n          when\n          userEmail\n        }\n        nextToken\n      }\n    }\n    nextToken\n  }\n}"

  public var filter: ModelChatFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelChatFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listChats", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListChat.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listChats: ListChat? = nil) {
      self.init(snapshot: ["__typename": "Query", "listChats": listChats.flatMap { $0.snapshot }])
    }

    public var listChats: ListChat? {
      get {
        return (snapshot["listChats"] as? Snapshot).flatMap { ListChat(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listChats")
      }
    }

    public struct ListChat: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelChatConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelChatConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Chat"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("userEmail", type: .nonNull(.scalar(String.self))),
          GraphQLField("messages", type: .object(Message.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, userEmail: String, messages: Message? = nil) {
          self.init(snapshot: ["__typename": "Chat", "id": id, "userEmail": userEmail, "messages": messages.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var userEmail: String {
          get {
            return snapshot["userEmail"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "userEmail")
          }
        }

        public var messages: Message? {
          get {
            return (snapshot["messages"] as? Snapshot).flatMap { Message(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "messages")
          }
        }

        public struct Message: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelMessageConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("items", type: .list(.object(Item.selections))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(items: [Item?]? = nil, nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelMessageConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var items: [Item?]? {
            get {
              return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
            }
            set {
              snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public struct Item: GraphQLSelectionSet {
            public static let possibleTypes = ["Message"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("chatId", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("content", type: .nonNull(.scalar(String.self))),
              GraphQLField("when", type: .nonNull(.scalar(String.self))),
              GraphQLField("userEmail", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, chatId: GraphQLID, content: String, when: String, userEmail: String? = nil) {
              self.init(snapshot: ["__typename": "Message", "id": id, "chatId": chatId, "content": content, "when": when, "userEmail": userEmail])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var chatId: GraphQLID {
              get {
                return snapshot["chatId"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "chatId")
              }
            }

            public var content: String {
              get {
                return snapshot["content"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "content")
              }
            }

            public var when: String {
              get {
                return snapshot["when"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "when")
              }
            }

            public var userEmail: String? {
              get {
                return snapshot["userEmail"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "userEmail")
              }
            }
          }
        }
      }
    }
  }
}

public final class GetMessageQuery: GraphQLQuery {
  public static let operationString =
    "query GetMessage($id: ID!) {\n  getMessage(id: $id) {\n    __typename\n    id\n    chatId\n    content\n    when\n    userEmail\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getMessage", arguments: ["id": GraphQLVariable("id")], type: .object(GetMessage.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getMessage: GetMessage? = nil) {
      self.init(snapshot: ["__typename": "Query", "getMessage": getMessage.flatMap { $0.snapshot }])
    }

    public var getMessage: GetMessage? {
      get {
        return (snapshot["getMessage"] as? Snapshot).flatMap { GetMessage(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getMessage")
      }
    }

    public struct GetMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["Message"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("chatId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
        GraphQLField("when", type: .nonNull(.scalar(String.self))),
        GraphQLField("userEmail", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, chatId: GraphQLID, content: String, when: String, userEmail: String? = nil) {
        self.init(snapshot: ["__typename": "Message", "id": id, "chatId": chatId, "content": content, "when": when, "userEmail": userEmail])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var chatId: GraphQLID {
        get {
          return snapshot["chatId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "chatId")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var when: String {
        get {
          return snapshot["when"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "when")
        }
      }

      public var userEmail: String? {
        get {
          return snapshot["userEmail"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userEmail")
        }
      }
    }
  }
}

public final class ListMessagesQuery: GraphQLQuery {
  public static let operationString =
    "query ListMessages($filter: ModelMessageFilterInput, $limit: Int, $nextToken: String) {\n  listMessages(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      chatId\n      content\n      when\n      userEmail\n    }\n    nextToken\n  }\n}"

  public var filter: ModelMessageFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelMessageFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listMessages", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListMessage.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listMessages: ListMessage? = nil) {
      self.init(snapshot: ["__typename": "Query", "listMessages": listMessages.flatMap { $0.snapshot }])
    }

    public var listMessages: ListMessage? {
      get {
        return (snapshot["listMessages"] as? Snapshot).flatMap { ListMessage(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listMessages")
      }
    }

    public struct ListMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelMessageConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelMessageConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Message"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("chatId", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("content", type: .nonNull(.scalar(String.self))),
          GraphQLField("when", type: .nonNull(.scalar(String.self))),
          GraphQLField("userEmail", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, chatId: GraphQLID, content: String, when: String, userEmail: String? = nil) {
          self.init(snapshot: ["__typename": "Message", "id": id, "chatId": chatId, "content": content, "when": when, "userEmail": userEmail])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var chatId: GraphQLID {
          get {
            return snapshot["chatId"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "chatId")
          }
        }

        public var content: String {
          get {
            return snapshot["content"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "content")
          }
        }

        public var when: String {
          get {
            return snapshot["when"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "when")
          }
        }

        public var userEmail: String? {
          get {
            return snapshot["userEmail"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "userEmail")
          }
        }
      }
    }
  }
}

public final class OnCreateUserSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateUser {\n  onCreateUser {\n    __typename\n    email\n    supportChatId\n    chat {\n      __typename\n      id\n      userEmail\n      messages {\n        __typename\n        items {\n          __typename\n          id\n          chatId\n          content\n          when\n          userEmail\n        }\n        nextToken\n      }\n    }\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateUser", type: .object(OnCreateUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateUser: OnCreateUser? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateUser": onCreateUser.flatMap { $0.snapshot }])
    }

    public var onCreateUser: OnCreateUser? {
      get {
        return (snapshot["onCreateUser"] as? Snapshot).flatMap { OnCreateUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateUser")
      }
    }

    public struct OnCreateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("email", type: .nonNull(.scalar(String.self))),
        GraphQLField("supportChatId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("chat", type: .object(Chat.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(email: String, supportChatId: GraphQLID, chat: Chat? = nil) {
        self.init(snapshot: ["__typename": "User", "email": email, "supportChatId": supportChatId, "chat": chat.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var email: String {
        get {
          return snapshot["email"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var supportChatId: GraphQLID {
        get {
          return snapshot["supportChatId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "supportChatId")
        }
      }

      public var chat: Chat? {
        get {
          return (snapshot["chat"] as? Snapshot).flatMap { Chat(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "chat")
        }
      }

      public struct Chat: GraphQLSelectionSet {
        public static let possibleTypes = ["Chat"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("userEmail", type: .nonNull(.scalar(String.self))),
          GraphQLField("messages", type: .object(Message.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, userEmail: String, messages: Message? = nil) {
          self.init(snapshot: ["__typename": "Chat", "id": id, "userEmail": userEmail, "messages": messages.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var userEmail: String {
          get {
            return snapshot["userEmail"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "userEmail")
          }
        }

        public var messages: Message? {
          get {
            return (snapshot["messages"] as? Snapshot).flatMap { Message(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "messages")
          }
        }

        public struct Message: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelMessageConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("items", type: .list(.object(Item.selections))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(items: [Item?]? = nil, nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelMessageConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var items: [Item?]? {
            get {
              return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
            }
            set {
              snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public struct Item: GraphQLSelectionSet {
            public static let possibleTypes = ["Message"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("chatId", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("content", type: .nonNull(.scalar(String.self))),
              GraphQLField("when", type: .nonNull(.scalar(String.self))),
              GraphQLField("userEmail", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, chatId: GraphQLID, content: String, when: String, userEmail: String? = nil) {
              self.init(snapshot: ["__typename": "Message", "id": id, "chatId": chatId, "content": content, "when": when, "userEmail": userEmail])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var chatId: GraphQLID {
              get {
                return snapshot["chatId"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "chatId")
              }
            }

            public var content: String {
              get {
                return snapshot["content"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "content")
              }
            }

            public var when: String {
              get {
                return snapshot["when"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "when")
              }
            }

            public var userEmail: String? {
              get {
                return snapshot["userEmail"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "userEmail")
              }
            }
          }
        }
      }
    }
  }
}

public final class OnUpdateUserSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateUser {\n  onUpdateUser {\n    __typename\n    email\n    supportChatId\n    chat {\n      __typename\n      id\n      userEmail\n      messages {\n        __typename\n        items {\n          __typename\n          id\n          chatId\n          content\n          when\n          userEmail\n        }\n        nextToken\n      }\n    }\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateUser", type: .object(OnUpdateUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateUser: OnUpdateUser? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateUser": onUpdateUser.flatMap { $0.snapshot }])
    }

    public var onUpdateUser: OnUpdateUser? {
      get {
        return (snapshot["onUpdateUser"] as? Snapshot).flatMap { OnUpdateUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateUser")
      }
    }

    public struct OnUpdateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("email", type: .nonNull(.scalar(String.self))),
        GraphQLField("supportChatId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("chat", type: .object(Chat.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(email: String, supportChatId: GraphQLID, chat: Chat? = nil) {
        self.init(snapshot: ["__typename": "User", "email": email, "supportChatId": supportChatId, "chat": chat.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var email: String {
        get {
          return snapshot["email"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var supportChatId: GraphQLID {
        get {
          return snapshot["supportChatId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "supportChatId")
        }
      }

      public var chat: Chat? {
        get {
          return (snapshot["chat"] as? Snapshot).flatMap { Chat(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "chat")
        }
      }

      public struct Chat: GraphQLSelectionSet {
        public static let possibleTypes = ["Chat"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("userEmail", type: .nonNull(.scalar(String.self))),
          GraphQLField("messages", type: .object(Message.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, userEmail: String, messages: Message? = nil) {
          self.init(snapshot: ["__typename": "Chat", "id": id, "userEmail": userEmail, "messages": messages.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var userEmail: String {
          get {
            return snapshot["userEmail"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "userEmail")
          }
        }

        public var messages: Message? {
          get {
            return (snapshot["messages"] as? Snapshot).flatMap { Message(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "messages")
          }
        }

        public struct Message: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelMessageConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("items", type: .list(.object(Item.selections))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(items: [Item?]? = nil, nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelMessageConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var items: [Item?]? {
            get {
              return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
            }
            set {
              snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public struct Item: GraphQLSelectionSet {
            public static let possibleTypes = ["Message"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("chatId", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("content", type: .nonNull(.scalar(String.self))),
              GraphQLField("when", type: .nonNull(.scalar(String.self))),
              GraphQLField("userEmail", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, chatId: GraphQLID, content: String, when: String, userEmail: String? = nil) {
              self.init(snapshot: ["__typename": "Message", "id": id, "chatId": chatId, "content": content, "when": when, "userEmail": userEmail])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var chatId: GraphQLID {
              get {
                return snapshot["chatId"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "chatId")
              }
            }

            public var content: String {
              get {
                return snapshot["content"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "content")
              }
            }

            public var when: String {
              get {
                return snapshot["when"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "when")
              }
            }

            public var userEmail: String? {
              get {
                return snapshot["userEmail"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "userEmail")
              }
            }
          }
        }
      }
    }
  }
}

public final class OnDeleteUserSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteUser {\n  onDeleteUser {\n    __typename\n    email\n    supportChatId\n    chat {\n      __typename\n      id\n      userEmail\n      messages {\n        __typename\n        items {\n          __typename\n          id\n          chatId\n          content\n          when\n          userEmail\n        }\n        nextToken\n      }\n    }\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteUser", type: .object(OnDeleteUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteUser: OnDeleteUser? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteUser": onDeleteUser.flatMap { $0.snapshot }])
    }

    public var onDeleteUser: OnDeleteUser? {
      get {
        return (snapshot["onDeleteUser"] as? Snapshot).flatMap { OnDeleteUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteUser")
      }
    }

    public struct OnDeleteUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("email", type: .nonNull(.scalar(String.self))),
        GraphQLField("supportChatId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("chat", type: .object(Chat.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(email: String, supportChatId: GraphQLID, chat: Chat? = nil) {
        self.init(snapshot: ["__typename": "User", "email": email, "supportChatId": supportChatId, "chat": chat.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var email: String {
        get {
          return snapshot["email"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var supportChatId: GraphQLID {
        get {
          return snapshot["supportChatId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "supportChatId")
        }
      }

      public var chat: Chat? {
        get {
          return (snapshot["chat"] as? Snapshot).flatMap { Chat(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "chat")
        }
      }

      public struct Chat: GraphQLSelectionSet {
        public static let possibleTypes = ["Chat"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("userEmail", type: .nonNull(.scalar(String.self))),
          GraphQLField("messages", type: .object(Message.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, userEmail: String, messages: Message? = nil) {
          self.init(snapshot: ["__typename": "Chat", "id": id, "userEmail": userEmail, "messages": messages.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var userEmail: String {
          get {
            return snapshot["userEmail"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "userEmail")
          }
        }

        public var messages: Message? {
          get {
            return (snapshot["messages"] as? Snapshot).flatMap { Message(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "messages")
          }
        }

        public struct Message: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelMessageConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("items", type: .list(.object(Item.selections))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(items: [Item?]? = nil, nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelMessageConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var items: [Item?]? {
            get {
              return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
            }
            set {
              snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }

          public struct Item: GraphQLSelectionSet {
            public static let possibleTypes = ["Message"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("chatId", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("content", type: .nonNull(.scalar(String.self))),
              GraphQLField("when", type: .nonNull(.scalar(String.self))),
              GraphQLField("userEmail", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(id: GraphQLID, chatId: GraphQLID, content: String, when: String, userEmail: String? = nil) {
              self.init(snapshot: ["__typename": "Message", "id": id, "chatId": chatId, "content": content, "when": when, "userEmail": userEmail])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return snapshot["id"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "id")
              }
            }

            public var chatId: GraphQLID {
              get {
                return snapshot["chatId"]! as! GraphQLID
              }
              set {
                snapshot.updateValue(newValue, forKey: "chatId")
              }
            }

            public var content: String {
              get {
                return snapshot["content"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "content")
              }
            }

            public var when: String {
              get {
                return snapshot["when"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "when")
              }
            }

            public var userEmail: String? {
              get {
                return snapshot["userEmail"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "userEmail")
              }
            }
          }
        }
      }
    }
  }
}

public final class OnCreateChatSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateChat {\n  onCreateChat {\n    __typename\n    id\n    userEmail\n    messages {\n      __typename\n      items {\n        __typename\n        id\n        chatId\n        content\n        when\n        userEmail\n      }\n      nextToken\n    }\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateChat", type: .object(OnCreateChat.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateChat: OnCreateChat? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateChat": onCreateChat.flatMap { $0.snapshot }])
    }

    public var onCreateChat: OnCreateChat? {
      get {
        return (snapshot["onCreateChat"] as? Snapshot).flatMap { OnCreateChat(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateChat")
      }
    }

    public struct OnCreateChat: GraphQLSelectionSet {
      public static let possibleTypes = ["Chat"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userEmail", type: .nonNull(.scalar(String.self))),
        GraphQLField("messages", type: .object(Message.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userEmail: String, messages: Message? = nil) {
        self.init(snapshot: ["__typename": "Chat", "id": id, "userEmail": userEmail, "messages": messages.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userEmail: String {
        get {
          return snapshot["userEmail"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userEmail")
        }
      }

      public var messages: Message? {
        get {
          return (snapshot["messages"] as? Snapshot).flatMap { Message(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "messages")
        }
      }

      public struct Message: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelMessageConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelMessageConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Message"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("chatId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("content", type: .nonNull(.scalar(String.self))),
            GraphQLField("when", type: .nonNull(.scalar(String.self))),
            GraphQLField("userEmail", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, chatId: GraphQLID, content: String, when: String, userEmail: String? = nil) {
            self.init(snapshot: ["__typename": "Message", "id": id, "chatId": chatId, "content": content, "when": when, "userEmail": userEmail])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var chatId: GraphQLID {
            get {
              return snapshot["chatId"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "chatId")
            }
          }

          public var content: String {
            get {
              return snapshot["content"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "content")
            }
          }

          public var when: String {
            get {
              return snapshot["when"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "when")
            }
          }

          public var userEmail: String? {
            get {
              return snapshot["userEmail"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "userEmail")
            }
          }
        }
      }
    }
  }
}

public final class OnUpdateChatSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateChat {\n  onUpdateChat {\n    __typename\n    id\n    userEmail\n    messages {\n      __typename\n      items {\n        __typename\n        id\n        chatId\n        content\n        when\n        userEmail\n      }\n      nextToken\n    }\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateChat", type: .object(OnUpdateChat.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateChat: OnUpdateChat? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateChat": onUpdateChat.flatMap { $0.snapshot }])
    }

    public var onUpdateChat: OnUpdateChat? {
      get {
        return (snapshot["onUpdateChat"] as? Snapshot).flatMap { OnUpdateChat(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateChat")
      }
    }

    public struct OnUpdateChat: GraphQLSelectionSet {
      public static let possibleTypes = ["Chat"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userEmail", type: .nonNull(.scalar(String.self))),
        GraphQLField("messages", type: .object(Message.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userEmail: String, messages: Message? = nil) {
        self.init(snapshot: ["__typename": "Chat", "id": id, "userEmail": userEmail, "messages": messages.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userEmail: String {
        get {
          return snapshot["userEmail"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userEmail")
        }
      }

      public var messages: Message? {
        get {
          return (snapshot["messages"] as? Snapshot).flatMap { Message(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "messages")
        }
      }

      public struct Message: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelMessageConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelMessageConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Message"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("chatId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("content", type: .nonNull(.scalar(String.self))),
            GraphQLField("when", type: .nonNull(.scalar(String.self))),
            GraphQLField("userEmail", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, chatId: GraphQLID, content: String, when: String, userEmail: String? = nil) {
            self.init(snapshot: ["__typename": "Message", "id": id, "chatId": chatId, "content": content, "when": when, "userEmail": userEmail])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var chatId: GraphQLID {
            get {
              return snapshot["chatId"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "chatId")
            }
          }

          public var content: String {
            get {
              return snapshot["content"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "content")
            }
          }

          public var when: String {
            get {
              return snapshot["when"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "when")
            }
          }

          public var userEmail: String? {
            get {
              return snapshot["userEmail"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "userEmail")
            }
          }
        }
      }
    }
  }
}

public final class OnDeleteChatSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteChat {\n  onDeleteChat {\n    __typename\n    id\n    userEmail\n    messages {\n      __typename\n      items {\n        __typename\n        id\n        chatId\n        content\n        when\n        userEmail\n      }\n      nextToken\n    }\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteChat", type: .object(OnDeleteChat.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteChat: OnDeleteChat? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteChat": onDeleteChat.flatMap { $0.snapshot }])
    }

    public var onDeleteChat: OnDeleteChat? {
      get {
        return (snapshot["onDeleteChat"] as? Snapshot).flatMap { OnDeleteChat(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteChat")
      }
    }

    public struct OnDeleteChat: GraphQLSelectionSet {
      public static let possibleTypes = ["Chat"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userEmail", type: .nonNull(.scalar(String.self))),
        GraphQLField("messages", type: .object(Message.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userEmail: String, messages: Message? = nil) {
        self.init(snapshot: ["__typename": "Chat", "id": id, "userEmail": userEmail, "messages": messages.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userEmail: String {
        get {
          return snapshot["userEmail"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userEmail")
        }
      }

      public var messages: Message? {
        get {
          return (snapshot["messages"] as? Snapshot).flatMap { Message(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "messages")
        }
      }

      public struct Message: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelMessageConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelMessageConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Message"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("chatId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("content", type: .nonNull(.scalar(String.self))),
            GraphQLField("when", type: .nonNull(.scalar(String.self))),
            GraphQLField("userEmail", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, chatId: GraphQLID, content: String, when: String, userEmail: String? = nil) {
            self.init(snapshot: ["__typename": "Message", "id": id, "chatId": chatId, "content": content, "when": when, "userEmail": userEmail])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var chatId: GraphQLID {
            get {
              return snapshot["chatId"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "chatId")
            }
          }

          public var content: String {
            get {
              return snapshot["content"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "content")
            }
          }

          public var when: String {
            get {
              return snapshot["when"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "when")
            }
          }

          public var userEmail: String? {
            get {
              return snapshot["userEmail"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "userEmail")
            }
          }
        }
      }
    }
  }
}

public final class OnCreateMessageSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateMessage {\n  onCreateMessage {\n    __typename\n    id\n    chatId\n    content\n    when\n    userEmail\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateMessage", type: .object(OnCreateMessage.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateMessage: OnCreateMessage? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateMessage": onCreateMessage.flatMap { $0.snapshot }])
    }

    public var onCreateMessage: OnCreateMessage? {
      get {
        return (snapshot["onCreateMessage"] as? Snapshot).flatMap { OnCreateMessage(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateMessage")
      }
    }

    public struct OnCreateMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["Message"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("chatId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
        GraphQLField("when", type: .nonNull(.scalar(String.self))),
        GraphQLField("userEmail", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, chatId: GraphQLID, content: String, when: String, userEmail: String? = nil) {
        self.init(snapshot: ["__typename": "Message", "id": id, "chatId": chatId, "content": content, "when": when, "userEmail": userEmail])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var chatId: GraphQLID {
        get {
          return snapshot["chatId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "chatId")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var when: String {
        get {
          return snapshot["when"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "when")
        }
      }

      public var userEmail: String? {
        get {
          return snapshot["userEmail"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userEmail")
        }
      }
    }
  }
}

public final class OnUpdateMessageSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateMessage {\n  onUpdateMessage {\n    __typename\n    id\n    chatId\n    content\n    when\n    userEmail\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateMessage", type: .object(OnUpdateMessage.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateMessage: OnUpdateMessage? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateMessage": onUpdateMessage.flatMap { $0.snapshot }])
    }

    public var onUpdateMessage: OnUpdateMessage? {
      get {
        return (snapshot["onUpdateMessage"] as? Snapshot).flatMap { OnUpdateMessage(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateMessage")
      }
    }

    public struct OnUpdateMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["Message"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("chatId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
        GraphQLField("when", type: .nonNull(.scalar(String.self))),
        GraphQLField("userEmail", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, chatId: GraphQLID, content: String, when: String, userEmail: String? = nil) {
        self.init(snapshot: ["__typename": "Message", "id": id, "chatId": chatId, "content": content, "when": when, "userEmail": userEmail])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var chatId: GraphQLID {
        get {
          return snapshot["chatId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "chatId")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var when: String {
        get {
          return snapshot["when"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "when")
        }
      }

      public var userEmail: String? {
        get {
          return snapshot["userEmail"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userEmail")
        }
      }
    }
  }
}

public final class OnDeleteMessageSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteMessage {\n  onDeleteMessage {\n    __typename\n    id\n    chatId\n    content\n    when\n    userEmail\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteMessage", type: .object(OnDeleteMessage.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteMessage: OnDeleteMessage? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteMessage": onDeleteMessage.flatMap { $0.snapshot }])
    }

    public var onDeleteMessage: OnDeleteMessage? {
      get {
        return (snapshot["onDeleteMessage"] as? Snapshot).flatMap { OnDeleteMessage(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteMessage")
      }
    }

    public struct OnDeleteMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["Message"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("chatId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
        GraphQLField("when", type: .nonNull(.scalar(String.self))),
        GraphQLField("userEmail", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, chatId: GraphQLID, content: String, when: String, userEmail: String? = nil) {
        self.init(snapshot: ["__typename": "Message", "id": id, "chatId": chatId, "content": content, "when": when, "userEmail": userEmail])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var chatId: GraphQLID {
        get {
          return snapshot["chatId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "chatId")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var when: String {
        get {
          return snapshot["when"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "when")
        }
      }

      public var userEmail: String? {
        get {
          return snapshot["userEmail"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userEmail")
        }
      }
    }
  }
}
