// One line comment.

/* Multi-line comment

// Nested comment 1
/* Nested comment 2 */

*/

/// Enumeration for Error type
/// - noName: Erorr when the name is not assigned
/// - incorrectAge(age: Int): age not in [0, 150] is assumed an error
/// - unknown: error other than the above ones
enum HelloError: Error {
    case noName
    case incorrectAge(age: Int)
    case unknown
}
