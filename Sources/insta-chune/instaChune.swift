import Foundation

@main
struct instaChune {
    static var contentsOfFile: [String] {
        get throws {
            guard let themes = Bundle.module.url(forResource: "themes", withExtension: "txt") else {
                preconditionFailure("themes file not present")
            }
            
            return try String(contentsOf: themes, encoding: .utf8)
                .components(separatedBy: "\n")
        }
    }
    
    static func main() throws {
        print(try contentsOfFile)
    }
}
