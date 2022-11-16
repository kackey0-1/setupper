# Nullability

## Nullable types under the hood
```kotlin
fun foo(): String? = "foo"
fun bar: String = "bar"
```
->
```java
@Nullable
public static final String foo() {
  return "foo";
}

@NotNull
public static final String bar() {
  return "bar";
}
```

## Safe casts
```kotlin
if (any is String) { // = instanceof
    val s = any as String // = typecast
    s.uppercase()
}
```