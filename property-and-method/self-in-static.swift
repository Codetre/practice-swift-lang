// `self` is type itself in `static` or `class` method.
struct SecurityController {
    static let adminCode: String = "0000"

    static func loginAsRoot(_ code: String) {
        if self.adminCode == code {
            print("Login")
        } else {
            print("Invalid passcode.")
        }
    }
}

var passcode: String = "0000"
SecurityController.loginAsRoot(passcode)
