package lib

fun isValidIdentifier(s: String): Boolean {
    var isChar = false
    if (s.isEmpty()) return false
    for ((index, c) in s.withIndex()) {
        if (index == 0 && !(c in setOf('a'..'c', '_'))) {
            return false
        }
//        if (index > 0 && c.isDigit()) {
//            if (index > 1 && isChar) {
//                return false
//            }
//        } else if(c.isLetter() || c == '_') {
//            if (index > 1 && !isChar) {
//                return false
//            }
//            isChar = true
//        }
    }
    return true
}

fun main(args: Array<String>) {
    println(isValidIdentifier("name"))   // true
    println(isValidIdentifier("_name"))  // true
    println(isValidIdentifier("_12"))    // true
    println(isValidIdentifier(""))       // false
    println(isValidIdentifier("012"))    // false
    println(isValidIdentifier("no$"))    // false
}