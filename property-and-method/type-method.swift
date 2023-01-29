// Same as 'class method' in other langs.
class FileManager {
    static func load(filename: String) {
        print("File loaded on memory.")
    }

    class func read(file: String) {
        print("Read file")
    }
}

class ImageManager: FileManager {
    // Cannot override the static method.
    override static func load(filename: String) {
        print("Image loaded on memory.")
    }

    // Can override the class method.
    override class func read(file: String) {
        print("Read image.")
    }
}

let fmanager = FileManager()
let imanager = ImageManager()
