# ManuallyDrop 与 mem::forget() 函数

ManuallyDrop<T> 用于抑制编译器自动调用 `T` 的析构函数. 可以用它来调整结构体中成员的 drop 顺序.

forget() 函数就是利用了 ManuallyDrop 类, 看看该函数的实现:

```rust, ignore
pub const fn forget<T>(t: T) {
    let _ = ManuallyDrop::new(t);
}
```

看下面一个例子:

```rust
use std::mem::ManuallyDrop;

pub struct Sheep {
    name: String,
}

pub struct Cow {
    name: String,
}

pub struct Horse {
    name: String,
}

impl Drop for Sheep {
    fn drop(&mut self) {
        println!("Dropping sheep {}", self.name);
    }
}

impl Drop for Cow {
    fn drop(&mut self) {
        println!("Dropping cow {}", self.name);
    }
}

impl Drop for Horse {
    fn drop(&mut self) {
        println!("Dropping horse {}", self.name);
    }
}

pub struct Animals {
    sheep: ManuallyDrop<Sheep>,
    horse: Horse,
    cow: ManuallyDrop<Cow>,
}

impl Drop for Animals {
    fn drop(&mut self) {
        println!("Dropping animals");
        unsafe {
            ManuallyDrop::drop(&mut self.sheep);
            ManuallyDrop::drop(&mut self.cow);
        }
    }
}

fn main() {
    let animals = Animals {
        sheep: ManuallyDrop::new(Sheep {
            name: "Doly".to_owned(),
        }),
        cow: ManuallyDrop::new(Cow {
            name: "Jery".to_owned(),
        }),
        horse: Horse {
            name: "Tom".to_owned(),
        },
    };
    // May cause resource leak
    //mem::forget(animals);
}
```

查看上面例子的打印日志, 可以发现结构体 `Animals` 的析构顺序是:

- Animals
    - Sheep
    - Cow
- Horse

而下面的代码是结构体的一般写法, 其析构顺序是:

- Animals
- Sheep
- Horse
- Cow

```rust, ignore
struct Animals {
    sheep: Sheep,
    horse: Horse,
    cow: Cow,
}
```

## 参考

- [ManuallyDrop RFC](https://rust-lang.github.io/rfcs/1860-manually-drop.html)
- [Destructors](https://doc.rust-lang.org/reference/destructors.html)