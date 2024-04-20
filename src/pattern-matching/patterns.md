# 模式 Patterns

| 模式类别                    | 例子                                                | 备注                                                                         |
|-------------------------|---------------------------------------------------|----------------------------------------------------------------------------|
| Literal                 | `100`, `"name"`                                   | Matches an exact value; the name of a const is also allowed                |
| Range                   | `0...100`, `'a'...'k'`                            | Matches any value in range, including the end value                        |
| Wildcard                | `_`                                               | Matches any value and ignores it                                           |
| Variable                | `name`, `mut count`                               | Like _ but moves or copies the value into a new local variable             |
| ref variable            | `ref field`, `ref mut field`                      | Borrows a reference to the matched value instead of moving or coping it    |
| Reference               | `&value`, `&(k, v)`                               | Matches only reference values                                              |
| Binding with subpattern | `val @ 0...99`, `ref circle @Shape::Circle {...}` | Matches the pattern to the right of @, using the variable name to the left |
| Enum pattern            | `Some(val)`, `None`                               |                                                                            |
| Tuple pattern           | `(key, value)`, `(r, g, b)`                       |                                                                            |
| Struct pattern          | `Color(r, g, b)`, `Point{x, y}`                   |                                                                            |
| Multiple patterns       | `'a'                                              | 'k'`                                                                       | In match only (not valid in let, etc.)                       |
| Guard expression        | `x if x * x <= r2`                                | In match only (not valid in let, etc.)                                     |
