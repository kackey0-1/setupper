
import kotlin.test.*

@Test
fun main() {
    val text = "abcdEFGH"
    val textWithDigits = "a1b2c3d4e5"
    println(text.none { it.isDigit() })
    println(textWithDigits.none { it.isDigit() })
//    assertFalse()
//    assertTrue(textWithDigits.none { it.isDigit() })
}
