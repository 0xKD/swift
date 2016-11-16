// Error is built-in protocol that represents errors (renamed from ErrorType)
enum MyBandError: Error {
    case NoMic
    case TooLoud
    case MissingSlim
}

func playSong(_ songName: String) throws -> String {
    if songName.hasSuffix("mic") {
        throw MyBandError.NoMic
    } else if songName.hasSuffix("up") {
        throw MyBandError.TooLoud
    }
    return "∞ \(songName) ∞"
}

do {
    let song = try playSong("turn it up")  // put something else here
    print(song)
} catch MyBandError.NoMic {  // catch specific error
    print("Got no mic!")
} catch let myberr as MyBandError {  // catch errors of a specific type
    print("Get it together band! (\(myberr))")
} catch {  // any other error
    print("Something went wrong! (\(error))")
}

// convert result to optional. Any error is discarded and nil returned
if let s = try? playSong("hello") {
    print("Now Playing: \(s)")
}
