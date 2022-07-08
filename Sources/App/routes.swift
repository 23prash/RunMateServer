import Fluent
import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        return "It works!"
    }

    app.get("hello") { req -> String in
        return "Hello, world!"
    }

    app.get("hello", ":world") { req -> String in
        let param = req.parameters.get("world") ?? "default"
        return "Hello, \(param)"
    }
    
    try app.register(collection: TodoController())
}
