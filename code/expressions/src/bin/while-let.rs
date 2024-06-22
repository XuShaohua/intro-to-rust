// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#[derive(Debug, Clone)]
pub struct ListNode {
    pub val: i32,
    pub next: Option<Box<ListNode>>,
}

impl ListNode {
    #[must_use]
    pub fn len(head: &Option<Box<Self>>) -> usize {
        let mut node_ref = head;
        let mut count = 0;
        while let Some(node_box) = node_ref {
            node_ref = &node_box.as_ref().next;
            count += 1;
        }
        count
    }

    #[must_use]
    #[inline]
    pub const fn is_empty(head: &Option<Box<Self>>) -> bool {
        head.is_none()
    }

    #[must_use]
    pub fn from_slice(slice: &[i32]) -> Option<Box<Self>> {
        let mut head = None;
        for &val in slice.iter().rev() {
            head = Some(Box::new(Self {
                val,
                next: head,
            }))
        }
        head
    }

    fn debug_print(head: &Option<Box<Self>>) {
        print!("head: [ ");
        let mut node_ref = head;
        while let Some(node_box) = node_ref {
            let val: i32 = node_box.as_ref().val;
            print!("{val}, ");
            node_ref = &node_box.as_ref().next;
        }
        println!("]");
    }
}

fn main() {
    let list = ListNode::from_slice(&[1, 2, 3, 5, 8]);
    ListNode::debug_print(&list);
    assert_eq!(ListNode::len(&list), 5);
}