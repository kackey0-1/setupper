package lib

class Customer
class Contact(val id: Int, var email: String) {
    override fun toString(): String {
        return "Contact(id=$id, email='$email')"
    }
}

/**
 * Data Classes
 * automatically derives the following members from all properties declared in the primary constructor
 *   equals()/hashCode() pair
 *   toString() of the form "User(name=John, age=42)"
 *   componentN() functions corresponding to the properties in their order of declaration.
 *   copy() function (see below).
 */
data class User(val name: String, val id: Int) {
    override fun equals(other: Any?) = other is User && other.id == this.id
}

/**
 * enum class
 */
enum class Color(val rgb: Int) {                      // 1
    RED(0xFF0000),                                    // 2
    GREEN(0x00FF00),
    BLUE(0x0000FF),
    YELLOW(0xFFFF00);

    fun containsRed() = (this.rgb and 0xFF0000 != 0)  // 3
}

/**
 * sealed class
 * https://kotlinlang.org/docs/sealed-classes.html#sealed-classes-and-when-expression
 *
 *   - restricts the use of inheritance
 *   - A sealed class is abstract by itself, it cannot be instantiated directly and can have abstract members.
 *   - All subclasses of a sealed class must be declared in the same file as the sealed class itself.
 */
sealed class Mammal(val name: String) {}
class Cat(val catName: String) : Mammal(catName)
class Human(val humanName: String, val job: String) : Mammal(humanName)
fun greetMammal(mammal: Mammal): String {
    when (mammal) {
        is Human -> return "Hello ${mammal.name}; You're working as a ${mammal.job}"
        is Cat -> return "Hello ${mammal.name}"
    }
}

/**
 * Object Declarations
 * https://kotlinlang.org/docs/object-declarations.html#object-declarations
 *
 *   - Object declarations are not inner and cannot access the members of their outer classes.
 *   - Object declarations can implement interfaces.
 *   - Object declarations can be used to implement a singleton pattern.
 */
object DoAuth {                                                 //1
    fun takeParams(username: String, password: String) {        //2
        println("input Auth parameters = $username:$password")
    }
}


fun main() {
    /* class */
    val customer = Customer()
    val contact = Contact(1, "mary@gmail.com")
    println(contact.id)
    contact.email = "jane@gmail.com"
    println(contact)
    println("***********************************************************")
    /* data class */
    println("data class")
    val user = User("John", 1)
    println(user)
    println("***********************************************************")
    /* enum class */
    println("enum class")
    val red = Color.RED
    println(red)
    println(red.containsRed())
    println(Color.BLUE.containsRed())
    println(Color.YELLOW.containsRed())
    println("***********************************************************")
    /* sealed class */
    println("sealed class")
    println(greetMammal(Cat("Snowy")))
    println("***********************************************************")
    /* object declaration */
    println("object declaration")
    DoAuth.takeParams("foo", "qwerty")
    println("***********************************************************")

}
