
# 备忘录模式 Memento

## 问题描述

## 代码示例
```rust

pub struct EditorMemento {
    content: String,
}

impl EditorMemento {
    #[must_use]
    pub const fn new(content: String) -> Self {
        Self { content }
    }

    #[must_use]
    pub fn content(&self) -> &str {
        &self.content
    }
}

pub struct Editor {
    content: String,
}

impl Default for Editor {
    fn default() -> Self {
        Self::new()
    }
}

impl Editor {
    #[must_use]
    pub const fn new() -> Self {
        Self {
            content: String::new(),
        }
    }

    pub fn append(&mut self, new_content: &str) {
        self.content.push_str(new_content);
    }

    #[must_use]
    pub fn content(&self) -> &str {
        &self.content
    }

    #[must_use]
    pub fn save(&self) -> EditorMemento {
        EditorMemento::new(self.content.clone())
    }

    pub fn restore(&mut self, memento: &EditorMemento) {
        self.content.clear();
        self.content.push_str(memento.content());
    }
}

fn main() {
    let mut editor = Editor::new();

    editor.append("This is the first sentence.\n");
    editor.append("This is second.\n");

    let saved = editor.save();

    editor.append("And this is third.\n");

    println!("current content:\n{}", editor.content());
    editor.restore(&saved);
    println!("current content:\n{}", editor.content());
}
```