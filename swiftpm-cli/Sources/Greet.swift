import ArgumentParser
import Figlet

@main
struct Greet: ParsableCommand {
  @Option(help: "The name of the person, place, or thing to greet")
  public var name: String?

  public func run() throws {
    let nameToGreet = self.name ?? "world"
    Figlet.say("Hello \(nameToGreet)!")
  }
}
