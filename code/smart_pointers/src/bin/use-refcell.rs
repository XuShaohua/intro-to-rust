use std::cell::RefCell;
use std::collections::HashMap;
use std::rc::Rc;

fn main() {
    let five = RefCell::new(5);
    //five.borrow_mut().set(1);
    println!("five: {}", five.into_inner());

    let map = Rc::new(RefCell::new(HashMap::new()));
    let map1 = Rc::clone(&map);
    let map2 = Rc::clone(&map);
    map1.borrow_mut().insert("afria", 1);
    map2.borrow_mut().insert("asia", 2);
    map1.borrow_mut().insert("europe", 3);

    println!("map len: {}", map.borrow().len());
}
