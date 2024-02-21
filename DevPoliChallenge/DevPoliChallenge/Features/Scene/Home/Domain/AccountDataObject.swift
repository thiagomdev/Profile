import Foundation

struct AccountDataObject {
    let userAccount: Account
    let userOrders: Order
    let helper: Helper
}

struct Account {
    let userData: String
    let address: String
    let cards: String
}

struct Order {
    let orders: String
    let extrato: String
}

struct Helper {
    let terms: String
    let privacyPolicy: String
    let frequencyQuestions: String
}
