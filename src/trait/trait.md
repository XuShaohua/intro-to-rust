
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

## Inherience
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

## Trait Objects
A reference to a trait type is called a trait object.
```rust
use std::io::Write;

let mut buf: Vec<u8> = Vec::new();
let writer: &mut Write = &mut buf;
```
这里, `writer` 就是一个 `trait object`.

每个 `trait object` 都是一个 `fat pointer`, 有两个指针组成,
也就是说, 在 64 位的机器上, 这样的一个指针, 占了 `16` 个字节:
* `data` 指针指向引用的值
* `vptr` 指针指向该值的 `vtable`, 里面记录了该值提供的方法; 这个表是相同类型的所有值所共享.

除了上面的 `&mut Write` 指针之外, 还有 `Box<Write>` 以及 `Rc<Write>` 这样的
指针.

## Generics Functions
```rust
fn say_hello<W: std::io::Write>(out: &mut W) -> std::io::Result<()> {
  ...
}
```

对于泛型这种形式, rust 在编译期会生成不同版本的函数. 也就是说,
跟 `Trait Objects` 不同的是, 泛型函数不需要在运行期查找 `vtable`, 即所谓的
动态派发 (dynamic dispatch), 所以其性能要更好些, 但是因为生成了不同版本的函数,
就导致可执行文件的大小有所增加. 此外, 还可以在编译期对这些生成的函数做特定的
优化, 比如 `inline`, 或者在直接计算常量的值.

## Trait implementations
只要 trait 或者相应的类型在本 crate 中有声明, 就可以给这个类型实现这个 trait.

# Traits in libcore
marker trait: 不需要实现任何具体的方法, 只是一个定义约束. 比如 `Sized`, `Copy` trait.

## Drop
用于自动释放资源, 比如在堆上分配的内存, 打开了的文件句柄以及 socket 连接等.

如果一个类型实现了 `Drop` trait, 那它就不能再实现 `Copy` trait.

实现了 `Drop` trait 的类型, 当它的值超出其作用域时, 会自动调用 `drop` 方法.
标准库中定义了可独立调用的方法:
```rust
fn drop(_x: T) { }
```
这里, `drop()` 会获取变量的所有权, 然后什么都不做, 当该函数结束时, 就会自动调用
`Drop` trait 中定义的 `drop()` 方法.

## Sized
`Sized` trait 是默认实现的.
```rust
struct S<T> { }
```
这种写法等同于:
```rust
struct S<T: Sized> { }
```

```rust
struct S<T: ?Sized> { }
```
就表示, 类型 `T` 不一定必须是 `Sized` trait.

## Default
用于定义初始化一个类型时的默认值.

`Option<T>` 的默认值是 `None`.

如果一个结构体中所有的元素都实现了 `Default` trait, 那可以简单化使用默认的声明
来让该结构体实现:
```rust
#[derive(Default)]
pub struct S { }
```

## Debug && Display

## Clone && Copy
简单理解, `Clone trait` 就是实现深拷贝, 它调用结构体中的所有属性的`clone()`方法.

`Copy trait` 是继承于 `Clone trait` 的, 是浅拷贝. 它只是简单地复制了结构体中的数据,
而不会调用结构体中所有属性的 `clone()` 方法. 它与 `Drop` trait 是互斥的.

所有的原始数据类型 (primitive types) 都实现了 `Copy trait`.

比如, 字符串类型 `String` 就只实现 `Clone trait`, 而不能实现 `Copy trait`, 因为
String 结构体中会记录一个指向堆内存的指针, 用于存放真实的字符串数据.

`Copy trait` 中并没有定义什么新的方法, 而只是一个约束.

默认情况下, 赋值语句会移动值, 即转移值的所有权. 但如果这个值实现了 `Copy` trait,
那么赋值语句并不会转移该值的所有权, 而是复制一份.
```rust
let x = 42_i32;
let y = x;
```

## Deref && DerefMut
`Deref`, `DerefMut` trait 主要用于一些智能指针类型, 比如 `Box`, `Rc`, `Arc`.

`Deref` trait 的定义:
```rust
pub trait Deref: ?Sized {
  type Target: ?Sized;
  fn deref(&self) -> &Self::Target;
}
```

## AsRef && AsMut
```rust
trait AsRef<T: ?Sized> {
  fn as_ref(&self) -> &T;
}

trait AsMut<T: ?Sized> {
  fn as_mut(&self) -> &mut T;
}
```

比如 `String` 实现了 `AsRef<str>` 及 `AsRef<[u8]>`, 所以 `String` 可以作为
`&str` 及 `&[u8]` 使用.

`Vec<T>` 也实现了 `AsRef<[T]>`, 所以它可以作为 `&[T]` 使用.

## Borrow && BorrowMut
```rust
trait Borrow<Borrowed: ?Sized> {
  fn borrow(&self) -> &Borrowed;
}

trait BorrowMut<Borrowed: ?Sized>: Borrow<Borrowed> {
  fn borrow_mut(&mut self) -> &mut Borrowed;
}
```

`Borrow` trait 与 `AsRef` trait 实现是一致的, 差别只在于 `Borrow` trait 更严格一些.
即要求被引用的对象的 `hash` 值是一致的. 比如哈稀表的实现:
```rust
impl HashMap<K, V> where K: Eq + Hash
{
  pub fn get<Key>(&self, k: &Key) -> Option<&V>
      where Key: ?Sized + Eq + Hash, K: Borrow<Key>, V: ?Sized
  { ... }
}
```

## From && Into
```rust
trait Into<T>: Sized {
  fn into(self) -> T;
}

trait From<T>: Sized {
  fn from(T) -> Self;
}
```
`From` trait 和 `Into` trait 用于数据类型间的转换, 比如整数转成字符串.
可以更灵活的设计接口.

```rust
fn ping<A>(address: A) -> std::io::Result<bool>
    where A: Into<Ipv4Addr>
{
  let ipv4_address = address.into();
  ...
}
```

要注意的是, `From` 和 `Into` trait 是获取了值的所有权的, 有所有权的转移.

## Send && Sync
`Send` trait 从一个线程移动 (move) 到另一个线程.

`Sync` trait 在线程之间安全地共享引用, 它是基于 `Send` trait 做的扩展.

## Sized && UnSized
实现了 `Sized trait` 的类型, 在编译期可以确定内存大小.

## Pin && Unpin

## Freeze

## Iterator && IntoIterator

## ToOwned
为了解决 `Clone` trait 无法复制引用的值本身, 引入了 `ToOwned` trait.
它可以复制引用的真正的数据, 比如 `&str` 引用的 `String`, 只需要为 `str` 实现 
`ToOwned<Owned=String>` 即可.

```rust
trait ToOwned {
  type Owned: Borrow<Self>;
  fn to_owned(&self) -> Self::Owned;
}
```

## Cow
`Cow` (Clone on Write) 是一个枚举类型.

```rust
enum Cow<'a, B: ?Sized + 'a>
    where B: ToOwned
{
  Borrowed(&'a B),
  Owned(<B as ToOwned>::Owned),
}
```
