class TextWriter {
    var filename: String?

    init() {
        filename = nil
    }

    init(_ filename: String?) {
        self.filename = filename
    }

    deinit {
        if filename == nil {
            print("Unexpected termination happens.")
            print("Your working will be saved in temp file.\n")
        } else {
            print("Normal termination.\n")
        }
    }
}

var writer: TextWriter? = TextWriter()
writer = nil

writer = TextWriter("my-great-novel.txt")
writer = nil
