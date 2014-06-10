// Type inference FTW.
var strings = ["a", "b", "c"]

// Declare the type of contained elements.
var strings2: String[] = ["d", "e", "f"]

// Declare an empty array.
var strings3 = String[]()

// Fill an array.
var strings4 = String[](count: 3, repeatedValue: "hey")


// Arrays must contain values of a single type.

// Appending.
strings += "d"
strings.append("e")
strings += ["f", "g"]

// Joining.
strings3 = strings + strings2

// Checking length.
println(strings.count)                      // 7

// Accessing elements.
println(strings[0])                         // a
println(strings[strings.endIndex - 1])      // g

// Assigning elements.
strings[0] = "a"

// Slices.
strings[0..1] = ["a"]                       // basically the same as the previous assignment
strings[0...1] = ["a", "b"]
strings[0...3]

// Methods.

if strings.isEmpty {
    println("empty")
} else {
    println("populated")                   // populated
}
strings.insert("a", atIndex: 0)            // Insert, not replace
println(strings.removeAtIndex(0))          // a
strings.map({
    (str: String) -> String in
    return str + "0"
})
strings.removeLast()

// Clearing.
strings.removeAll(keepCapacity: false)
strings = []