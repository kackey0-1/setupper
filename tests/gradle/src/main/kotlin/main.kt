
//import kotlin.io.Serializable
import kotlin.test.*

fun main() {
    /*
    val question: String = "life, the universe, and everything"
    val abc = listOf("a", "b", "c")
        .joinToString(separator = "", prefix = "(", postfix = ")")
    displaySeparator(charactor = '=')
    println("$question?")
    displaySeparator()
    println(abc)
    displaySeparator(size = 100)
    for (c in 'a'..'z') {
        println(c)
    }
     */
    val c: Char = "Kotlin".lastChar()
    displaySeparator()
    println(c)
}

fun String.lastChar(): Char = get(length - 1)

fun displaySeparator(charactor: Char = '*', size: Int = 50) {
    repeat(size) {
        print(charactor)
    }
    println()
}

