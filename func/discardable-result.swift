/* Assume that this function do a complex task and you want to log the result
 * on the console. The return value doesn't need not now, but someday.
 */

// `@` is attribute providing additional information about type or declaration.
@discardableResult func process(_ value: Int) -> String {
    // 
    dump(value)
    return String(value)
}

process(3)
