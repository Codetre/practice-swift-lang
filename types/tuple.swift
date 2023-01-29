// Tuple that has elements whose types of `String`, `Int`.
var langInfo: (String, Double) = ("Swift", 5.6)
print("value: \(langInfo), type: \(type(of: langInfo))")

// Indexing - by number
var elem1st = langInfo.0
var elem2nd = langInfo.1
print("\(elem1st), \(elem2nd)\n")

// Named tuple - give names its elements
var namedLangInfo: (name: String, version: Double) = ("Swift", 5.6)
dump(namedLangInfo)

// Indexing - by name
var langName: String = namedLangInfo.name
var langVersion: Double = namedLangInfo.version
print("\(langName) \(langVersion)")
