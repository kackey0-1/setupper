fn main() {
    let name = "dorayakikun";
    println!("{}", name);
    vec_sample();
    if_sample();
    loop_sample();
    for_sample();
}

fn vec_sample() {
    let animals = vec!["ookami", "shirokuma", "fukuroh"];
    for i in 0..animals.len() {
        println!("animals[{}] = {}", i, animals[i]);
    }
}

fn if_sample() {
    let age = 19;
    if age < 20 {
        println!("age < 20");
    } else {
        println!("age >= 20");
    }
}

fn loop_sample() {
    let mut count = 0;
    loop {
        println!("loop: count is {}", count);
        count += 1;
        if count >= 10 {
            break;
        }
    }
}

fn for_sample() {
    for i in 0..10 {
        println!("for: i is {}", i);
    }
}

// #[wasm_bindgen]
// pub fn greet(name: &str) {
//     alert(&format!("Hello, {}", name));
// }
