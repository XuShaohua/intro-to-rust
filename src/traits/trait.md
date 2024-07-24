
# Traits

```rust
struct Sheep {
    naked: bool,
    name: &'static str,
}

trait Animal {
    fn new(name: &'static str) -> Self;

    fn name(&self) -> &'static str;
    fn noise(&self) -> &'static str;

    fn talk(&self) {
        println!("{} says {}", self.name(), self.noise());
    }
}

impl Sheep {
    fn is_naked(&self) -> bool {
        self.naked
    }

    fn shear(&mut self) {
        if self.is_naked() {
            println!("{} is already naked...", self.name());
        } else {
            println!("{} gets a haircut!", self.name);
            self.naked = true;
        }
    }
}

impl Animal for Sheep {
    fn new(name: &'static str) -> Sheep {
        Sheep {
            name: name,
            naked: false,
        }
    }

    fn name(&self) -> &'static str {
        self.name
    }

    fn noise(&self) -> &'static str {
        if self.is_naked() {
            "baaaaah?"
        } else {
            "baaaah!"
        }
    }

    fn talk(&self) {
        println!("{} pauses briefly... {}", self.name, self.noise());
    }
}

fn main() {
    let mut dolly: Sheep = Animal::new("Dolly");
    dolly.talk();
    dolly.shear();
    dolly.talk();
}
```

## Inheritance

```rust
trait Person {
    fn name(&self) -> String;
}

trait Student: Person {
    fn university(&self) -> String;
}

trait Programmer {
    fn favorite_language(&self) -> String;
}

trait ComputerScienceStudent: Programmer + Student {
    fn git_username(&self) -> String;
}

fn comp_sci_student_greeting(student: &dyn ComputerScienceStudent) -> String {
    format!(
        "My name is {} and I attend {}. My git username is {}",
        student.name(),
        student.university(),
        student.git_username()
    )
}

fn main() {}
```

## dyn trait
```rust
trait Animal {
    fn name(&self) -> &'static str;
    fn noise(&self) -> &'static str;

    fn talk(&self) {
        println!("{} says {}", self.name(), self.noise());
    }
}

struct Sheep {
    naked: bool,
    name: &'static str,
}

impl Sheep {
    fn new(name: &'static str) -> Sheep {
        Sheep {
            naked: false,
            name: name,
        }
    }

    fn is_naked(&self) -> bool {
        self.naked
    }

    fn shear(&mut self) {
        if self.is_naked() {
            println!("{} is already naked...", self.name());
        } else {
            println!("{} gets a haircut!", self.name);
            self.naked = true;
        }
    }
}

impl Animal for Sheep {
    fn name(&self) -> &'static str {
        self.name
    }

    fn noise(&self) -> &'static str {
        if self.is_naked() {
            "baaaaah?"
        } else {
            "baaaah!"
        }
    }

    fn talk(&self) {
        println!("{} pauses briefly... {}", self.name, self.noise());
    }
}

struct Cow {
    height: f64,
    name: &'static str,
}

impl Cow {
    fn new(name: &'static str) -> Cow {
        Cow {
            height: 1.0,
            name: name,
        }
    }
}

impl Animal for Cow {
    fn name(&self) -> &'static str {
        self.name
    }

    fn noise(&self) -> &'static str {
        "Woooo"
    }

    fn talk(&self) {
        println!("{} says {}", self.name(), self.noise());
    }
}

fn random_animal(random_number: f64) -> Box<dyn Animal> {
    if random_number < 0.5 {
        Box::new(Sheep::new("sheep01"))
    } else {
        Box::new(Cow::new("cow01"))
    }
}

fn main() {
    let random_number = 0.24;
    let animal = random_animal(random_number);
    println!("animal: {}, noise: {}", animal.name(), animal.noise());
}
```

## impl trait
```rust
fn double_positive<'a>(numbers: &'a Vec<i32>) -> impl Iterator<Item = i32> + 'a {
    return numbers.iter().filter(|x| x > &&0).map(|x| x + 2);
}

fn combine_vecs(u: Vec<i32>, v: Vec<i32>) -> impl Iterator<Item = i32> {
    return v.into_iter().chain(u.into_iter()).cycle();
}

fn make_adder_function(y: i32) -> impl Fn(i32) -> i32 {
    let closure = move |x: i32| x + y;
    return closure;
}

fn main() {}
```

只要 trait 或者相应的类型在本 crate 中有声明, 就可以给这个类型实现这个 trait.
Marker Trait: 不需要实现任何具体的方法, 只是一个定义约束. 比如 `Sized`, `Copy`.

## 解决函数名冲突 Turbofish


## 参考
- [What is Rust's turbofish?](https://techblog.tonsser.com/posts/what-is-rusts-turbofish)
