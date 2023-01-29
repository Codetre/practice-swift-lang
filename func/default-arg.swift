func fill(_ s: String, width: Int, with what: Character="0") -> String {
    var copied: String = s
    if s.count < width {
        for _ in 0 ..< (width - s.count) {
            copied.insert(what, at: copied.startIndex)
        }
    }
    return copied
}

print(fill("10110", width: 9))
