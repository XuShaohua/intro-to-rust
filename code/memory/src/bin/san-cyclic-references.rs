// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use std::cell::RefCell;
use std::rc::Rc;

#[derive(Default)]
struct TreeNode {
    left: Option<Rc<RefCell<TreeNode>>>,
    right: Option<Rc<RefCell<TreeNode>>>,
    val: i32,
}

impl TreeNode {
    #[must_use]
    #[inline]
    pub const fn is_leaf(&self) -> bool {
        self.left.is_none() && self.right.is_none()
    }
}

impl Drop for TreeNode {
    fn drop(&mut self) {
        println!("Will drop node with value: {}", self.val);
    }
}

fn main() {
    let leaf_node = Rc::new(RefCell::new(TreeNode::default()));
    assert!(leaf_node.borrow().is_leaf());
    
    let node1 = Rc::new(RefCell::new(TreeNode {
        left: None,
        right: Some(leaf_node.clone()),
        val: 42,
    }));
    let node2 = Rc::new(RefCell::new(TreeNode {
        left: Some(leaf_node.clone()),
        right: Some(node1.clone()),
        val: 12,
    }));
    // 制造一个循环引用
    node1.borrow_mut().left = Some(node2.clone());

    // 程序运行结束后, node1 和 node2 都不会被正确的释放
}