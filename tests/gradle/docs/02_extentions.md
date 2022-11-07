# Kotlin Extensions

## Extension Functions
```kotlin
fun String.lastChar(): Char = this.get(this.length - 1)
// ->
fun String.lastChar(): Char = get(length - 1)
val c: Char = "Kotlin".lastChar()
```

```java
import lib.lastChar;
char c = lastChar("Kotlin")
```

## Examples of Extension Functions
- `String.joinToString()`
- `String.getOrNull(n)`
- `String.withIndex()`
- `infix fun Int.until(to: Int): IntRange`
  ```kotlin
  1.until(10)
  1 until 10
  ```
- `infix fun <A, B> A.to(that: B): Pair<A, B>`
  ```kotlin
  1.to("one")
  1 to "one"
  ```
- Formatting multilne strings
  ```kotlin
  val q = """To code
  |or not to code?..""".trimMargin()
  val q2 = """To code
  #or not to code?..""".trimMargin(marginPrefix = "#")
  val q3 = """To code
  or not to code?..""".trimIndent()
  ```
- Extension function: eq
  ```kotlin
  infix fun <T> T.eq(other: T) = this == T
  fun getAnswer() = 42
  
  getAnswer() eq 42 // true
  getAnswer() eq 43 // false
  ```

## Calling Extensions
- Extensions are static Java functions under the hood
- No override for extension functions in Kotlin

```kotlin
open class Parent
class Child: Parent()
fun Parent.foo() = "parent"
fun Child.foo() = "child"
fun main(args: Array<String>) {
  val c: Child = Child()
  println(c.foo()) // child
  val p: Parent = c
  println(p.foo()) // parent
}
```

## Importance of extensions
- Extensions are resolved statically
- Extensions do not actually modify classes they extend
- Extensions are resolved statically
  - Extension functions are dispatched statically
  - Extension properties are resolved statically