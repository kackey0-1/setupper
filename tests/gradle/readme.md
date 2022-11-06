# Kotlin

## From Java to Kotlin
- automatically convert Java code to Kotlin

## Variables
- val: immutable
- var: mutable

## Functions
- returning unit is like void in Java
- function type
  - top-level functions
    ```kotlin
    fun topLevel() = 1
    ```
  - member functions
    ```kotlin
    class A {
      fun member() = 1
    }
    ```
  - local functions
    ```kotlin
      fun other() {
          fun local() = 1
      }
    ```
- calling a top level function from Java
  - changes the JVM name of the class containing top-level functions(`@JvmName`)
  ```java
  public class UsingFoo {
      public static void main(String[] args) {
          int result = FooKt.topLevel();
      }
  }
  ```
- calling a function with default arguments from Java
  ```kotlin
  fun sum(a: Int = 0, b: Int = 0) = a + b
  ```
  ```java
  // providing valuees for all arguments
  sum(1, 2)
  ```
  - `@JvmOverloads` annotation
    - generates overloads for the function that substitute default parameter values
    ```java
    public static final int sum(int a, int b)
    public static final int sum(int a)
    public static final int sum()
    ```
    - so that Java code can call the function without specifying default values
    ```java
    // default values are used
    sum(1)
    ```
    
## Conditionals
- when as switch
- when as expression
  - `when` is an expression, i.e. it returns a value
  - `when` branches can be blocks, and the last expression is the value of a block
  ```kotlin
  fun transform(color: String): Int {
      return when (color) {
          "Red" -> 0
          "Green" -> 1
          "Blue" -> 2
          else -> throw IllegalArgumentException("Invalid color param value")
      }
  }
  ```
  - `when` can be used without an argument, which is the same as `switch(true)`
  ```kotlin
  fun transform(color: String): Int {
      return when {
          color.startsWith("Red") -> { return 0 }
          color.startsWith("Green") -> { return 1 }
          color.startsWith("Blue") -> { return 2 }
          else -> throw IllegalArgumentException("Invalid color param value")
      }
  }
  ```

## Loop
- while loop
  ```kotlin
    while (condition) {
      // body
    }
  ```
- do while loop
  ```kotlin
    do {
      // body
    } while (condition)
  ```- 
- for
  ```kotlin
    for (s in listOf("a", "b", "c")) {
      // body
    }
    for ((index, element) in listOf("a", "b", "c").withIndex()) {
      // body
    }
    for ((key, value) in mapOf(1 to "one", 2 to "two")) {
      // body
    }
    for (i in 1..100) { println(i) }  // closed range: includes 100
    for (i in 1 until 100) { println(i) }  // closed range: includes 100
    for (i in 9 downTo 1 step 2) { println(i) }  // closed range: includes 100
    for (c in "abc") { print(c + 1) } // bcd will be displayed
  ```

## Range
- Different types of ranges
  - IntRange
    ```kotlin
    val intRange: IntRange = 0..1024
    val anotherIntRange = 1 until 10
    ```

  - CharRange
    ```kotlin
    val charRange: CharRange = 'a'..'z'
    ```

  - ClosedRange
    ```kotlin
    val stringRange: ClosedRange<String> = "ab".."az"
    // "bill" in "a".."k" ->
    // "a" <= "bill" && "bill" <= "k"
    // "a".compareTo("bill") <= 0 && "bill".compareTo("k") <= 0
    // strings are compared lexicographically
    val dateRange: ClosedRange<Date> = startDate..endDate
    ```

```kotlin
// lowercase letters or the range upper case letters ?
fun isLetter(c: Char) = c in 'a'..'z' || c in 'A'..'Z'
```

## data class
- getter and setter
- equals
- hashCode
- toString

will be generated automatically
