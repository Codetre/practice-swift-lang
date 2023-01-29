import Foundation

// Fallback version of `init`.
struct Message {
    var header: String
    var content: String
    var timestamp: Foundation.Date

    init(header: String, content: String) {
        self.header = header
        self.content = content
        self.timestamp = Date()
    }

    init?(header: String?, content: String?) {
        self.header = "Empty"
        self.content = "Empty"
        self.timestamp = Date()
    }
}

let instantMessage = Message(header: nil, content: nil)
dump(instantMessage)
