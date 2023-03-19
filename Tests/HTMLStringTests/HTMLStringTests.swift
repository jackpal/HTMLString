import XCTest
@testable import HTMLString

fileprivate struct TestCodable : Codable {
  var html: HTMLString
}


final class HTMLStringTests: XCTestCase {
    func testDecoding() throws {
      let JSON = """
      {
          "html": "An html string. <a href='https://example.com'>Example link</a>",
      }
      """

      let jsonData = JSON.data(using: .utf8)!
      let testCodable: TestCodable = try! JSONDecoder().decode(TestCodable.self, from: jsonData)
      let html = testCodable.html
      XCTAssertEqual(html.asRawText, "An html string. Example link")
      XCTAssertEqual(html.asMarkdown, "An html string. [Example link](https://example.com)")
    }
}
