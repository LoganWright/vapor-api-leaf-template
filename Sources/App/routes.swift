import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    
    // simple sanity check
    router.get { _ in "it works" }
    
    // Basic "Hello, world!" example
    router.get("hello") { req in
        return "Hello, world!"
    }
}
