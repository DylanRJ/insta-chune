import Foundation

@main
struct instaChune {
    static func main() async throws {
        let (data, _) = try await URLSession
            .shared
            .data(from: URL(string: "https://random-word-api.herokuapp.com/word")!)
        guard let string = String(data: data, encoding: .utf8) else {
            preconditionFailure()
        }
        let newStr = string
            .replacingOccurrences(of: "[", with: String())
            .replacingOccurrences(of: "]", with: "")
            .replacingOccurrences(of: #"""#, with: "")
        print(newStr.capitalized)
    }
}
