package lib.base

/**
 * Higher-Order Functions
 *   - A higher-order function is a function that takes functions as parameters, or returns a function.
 */

fun calculate(x: Int, y: Int, operation: (Int, Int) -> Int): Int {
    return operation(x, y)
}
fun sum(x: Int, y: Int) = x + y
fun multiple(x: Int, y: Int) = x * y

/**
 * Lambda Functions
 *  - A lambda function is a function literal, i.e. a function that is not declared, but passed immediately as an expression.
 */
val upperCase1: (String) -> String = { str: String -> str.uppercase() }
val upperCase2: (String) -> String = { str -> str.uppercase() }
val upperCase3 = { str: String -> str.uppercase() }
// val upperCase4 = { str -> str.uppercase() } // error: Type inference failed: Not enough information to infer parameter T in inline fun <T> run(block: () -> T): T
val upperCase5: (String) -> String = { it.uppercase() }
val upperCase6: (String) -> String = String::uppercase

/**
 * Extension Functions and Properties
 *   - Extension functions are resolved statically.
 */
data class Item(val name: String, val price: Float)
data class Order(val items: Collection<Item>)
fun Order.maxPricedItemValue(): Float = this.items.maxByOrNull { it.price }?.price ?: 0F
fun Order.maxPricedItemName() = this.items.maxByOrNull { it.price }?.name ?: "NO_PRODUCTS"
val Order.commaDelimitedItemNames: String
    get() = items.map { it.name }.joinToString()

fun main() {
    println("********* Higher-Order Functions *********")
    val sumResult = calculate(4, 5, ::sum)
    val mulResult = calculate(4, 5) { a, b -> a * b }
    val multipleResult = calculate(4, 5, ::multiple)
    println("sumResult $sumResult, mulResult $mulResult, multipleResult $multipleResult")
    println("********* Lambda Functions *********")
    println(upperCase1("hello"))
    println(upperCase2("hello"))
    println(upperCase3("hello"))
    println(upperCase5("hello"))
    println(upperCase6("hello"))
    println("********* Extension Functions and Properties *********")
    val order = Order(
        listOf(
            Item("Bread", 25.0F),
            Item("Wine", 29.0F),
            Item("Water", 12.0F)
        )
    )
    println("Max priced item name: ${order.maxPricedItemName()}")
    println("Max priced item value: ${order.maxPricedItemValue()}")
    println("Items: ${order.commaDelimitedItemNames}")

}