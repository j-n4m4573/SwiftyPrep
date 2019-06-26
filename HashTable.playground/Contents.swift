import UIKit


var dict : [String : String] = [:]

dict["First Name"] = "Steve"

"First Name".hashValue

"Jamar".hashValue

func naiveHash(_ string: String) -> Int {
    let unicodeScalars = string.unicodeScalars.map {Int($0.value)}
    return unicodeScalars.reduce(0, +)
}

naiveHash("abc")
naiveHash("bca")

