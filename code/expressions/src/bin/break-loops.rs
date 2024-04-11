fn main() {
    let mut count = 0;
    loop {
        count += 1;

        if count == 3 {
            println!("three");
        }

        if count == 5 {
            println!("five");
            break;
        }
    }

    #[allow(clippy::never_loop)]
    #[allow(unused_labels)]
    'outer: loop {
        println!("Enter the outer loop");

        'inner: loop {
            println!("Enter the inner loop");

            break 'outer;
        }
    }
    println!("Leave the outer loop");

    let mut counter = 0;
    let result = loop {
        counter += 1;
        if counter == 10 {
            break counter * 2;
        }
    };
    println!("result: {}", result);
}
