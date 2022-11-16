package lib

/**
 * Implement the function that checks
 * whether a string is a valid identifier.
 * A valid identifier is a non-empty string that starts with a letter or underscore
 * and consists of only letters, digits and underscores.
 */
fun isValidIdentifier(s: String): Boolean {
    fun isValidCharacter(c: Char): Boolean {
        return c == '_' || c in 'a'..'z' || c in 'A'..'Z' || c in '0'..'9'
    }

    if (s.isEmpty() || s[0] in '0'..'9') {
        return false
    }
    return s.all(::isValidCharacter)
}

fun main(args: Array<String>) {
    println(isValidIdentifier("name"))   // true
    println(isValidIdentifier("_name"))  // true
    println(isValidIdentifier("_12"))    // true
    println(isValidIdentifier(""))       // false
    println(isValidIdentifier("012"))    // false
    println(isValidIdentifier("no$"))    // false
}