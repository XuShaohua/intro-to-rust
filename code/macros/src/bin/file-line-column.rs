
fn file_line_column() {
    println!("{} : {} : {}", file!(), line!(), column!());
}

fn concat() {
    println!("{}", concat!(1, 2, 3));
}

fn module_path() {
    println!("module path: {}", module_path!());
}

fn main() {
    file_line_column();
    concat();
    module_path();
}
