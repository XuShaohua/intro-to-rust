# 宏的语法 Macros

## Fragment Types

| fragment type | matches                                              | can be followed by                   |
|---------------|------------------------------------------------------|--------------------------------------|
| expr          | an expression: 2 + 2, "udo", x.len()                 | => , ;                               |
| stmt          | An expression or declaration, no trailing semicolon: | => , ;                               |
|               | (hard to use, try expr or block instead)             |                                      |
| ty            | A type: String, Vec<u8>, (&str, bool)                | => , ; =            { [ : > as where |
| path          | A path: ferns, std::sync::mpsc                       | => , ; =            { [ : > as where |
| pat           | A pattern: _, Some(ref x)                            | => , =              if in            |
| item          | An item:                                             | Anything                             |
|               | struct Point {x: f64, y: f64}, mod ferns             |                                      |
| block         | A block: { s += "ok\n"; true; }                      | Anything                             |
| meta          | The body of an attribute:                            | Anything                             |
|               | inline, derive(Copy, Clone), doc="3D model"          |                                      |
| ident         | An identifier: std, Json, var_name                   | Anything                             |
| tt            | A token tree: ; >=, {}, [0 1 (+ 0 1)]                | Anything                             |

## 模式 Patterns

以下表格列出了宏内部可以用到的匹配模式:

| 写法           | 含义               |
|--------------|------------------|
| `$( ... )*`  | 匹配0次到多次, 不包含分隔符  |
| `$( ... ),*` | 用来匹配一列参数, 以逗号来分隔 |
| `$( ... );*` | 匹配0次到多次, 用分号作为分隔 |
| `$( ... )+`  | 匹配1次到多次, 没有分隔符   |
| `$( ... ),+` | 匹配1次到多次, 用逗号作为分隔 |
| `$( ... );+` | 匹配1次到多次, 用分号作为分隔 |

## 函数内部的宏

可以在函数内部定义宏并调用它.

下面的示例代码来自 [termcolor](https://github.com/BurntSushi/termcolor/blob/master/src/lib.rs#L1571) :

```rust, ignore
fn write_color(
    &mut self,
    fg: bool,
    c: &Color,
    intense: bool,
) -> io::Result<()> {
    macro_rules! write_intense {
        ($clr:expr) => {
            if fg {
                self.write_str(concat!("\x1B[38;5;", $clr, "m"))
            } else {
                self.write_str(concat!("\x1B[48;5;", $clr, "m"))
            }
        };
    }
    macro_rules! write_normal {
        ($clr:expr) => {
            if fg {
                self.write_str(concat!("\x1B[3", $clr, "m"))
            } else {
                self.write_str(concat!("\x1B[4", $clr, "m"))
            }
        };
    }
    if intense {
        match *c {
            Color::Black => write_intense!("8"),
            Color::Blue => write_intense!("12"),
            Color::Green => write_intense!("10"),
            Color::Red => write_intense!("9"),
            Color::Cyan => write_intense!("14"),
            Color::Magenta => write_intense!("13"),
            Color::Yellow => write_intense!("11"),
            Color::White => write_intense!("15"),
            Color::__Nonexhaustive => unreachable!(),
        }
    }
}
```

## 参考

* [The Little Book of Rust Macros](https://danielkeep.github.io/tlborm/book/README.html)
