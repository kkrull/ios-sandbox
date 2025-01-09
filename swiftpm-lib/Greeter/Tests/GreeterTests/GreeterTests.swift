import Testing
@testable import Greeter

@Test("greets a person by the given name")
func makeGreeting_givenName() async throws {
    let returned = makeGreeting(name: "World")
    #expect(returned == "Hello World!")
}
