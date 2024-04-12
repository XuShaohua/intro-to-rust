fn check_num(n: i32) {
    match n {
        1 => {
            println!("One!");
        }
        2 | 3 | 5 | 7 | 11 => {
            println!("This is a prime!");
        }
        13..=19 => {
            println!("A teen");
        }
        _ => {
            println!("Ain't special");
        }
    }
}

fn guard() {
    let pair = (2, -2);
    println!("Tell me about: {:?}", pair);
    match pair {
        (x, y) if x == y => {
            println!("These are twins");
        }
        (x, y) if x + y == 0 => {
            println!("Antimatter, kaboom!");
        }
        (x, _) if x % 2 == 1 => {
            println!("The first one is odd!");
        }
        _ => {
            println!("No correlation ...");
        }
    }
}

fn main() {
    check_num(13);
    guard();
}
