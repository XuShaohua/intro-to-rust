
# 责任链模式 Chain of Responsibilities

## 问题描述

## 代码示例
```rust
pub trait Account {
    fn name(&self) -> &'static str;

    fn pay(&mut self, amount: f64) -> bool {
        if self.can_pay(amount) {
            println!("Paid {amount} using {}", self.name());
            self.pay_money(amount);
            return true;
        }
        let name = self.name().to_owned();
        if let Some(successor) = self.get_successor() {
            println!("'Cannot pay using {name}. Proceeding ..");
            return successor.as_mut().pay(amount);
        }
        println!("None of the accounts have enough balance");
        false
    }

    fn balance(&self) -> f64;

    fn get_successor(&mut self) -> Option<&mut Box<dyn Account>>;

    fn pay_money(&mut self, amount: f64);

    fn can_pay(&self, amount: f64) -> bool {
        self.balance() >= amount
    }
}

type AccountNode = Option<Box<dyn Account>>;

pub struct Bank {
    balance: f64,
    next: AccountNode,
}

impl Bank {
    #[must_use]
    pub const fn new(balance: f64, next: AccountNode) -> Self {
        Self { balance, next }
    }
}

impl Account for Bank {
    fn name(&self) -> &'static str {
        "Bank"
    }

    fn balance(&self) -> f64 {
        self.balance
    }

    fn get_successor(&mut self) -> Option<&mut Box<dyn Account>> {
        self.next.as_mut()
    }

    fn pay_money(&mut self, amount: f64) {
        self.balance -= amount;
    }
}

pub struct Paypal {
    balance: f64,
    next: AccountNode,
}

impl Paypal {
    #[must_use]
    pub const fn new(balance: f64, next: AccountNode) -> Self {
        Self { balance, next }
    }
}

impl Account for Paypal {
    fn name(&self) -> &'static str {
        "Paypal"
    }

    fn balance(&self) -> f64 {
        self.balance
    }

    fn get_successor(&mut self) -> Option<&mut Box<dyn Account>> {
        self.next.as_mut()
    }

    fn pay_money(&mut self, amount: f64) {
        self.balance -= amount;
    }
}

pub struct Bitcoin {
    balance: f64,
    next: AccountNode,
}

impl Bitcoin {
    #[must_use]
    pub const fn new(balance: f64, next: AccountNode) -> Self {
        Self { balance, next }
    }
}

impl Account for Bitcoin {
    fn name(&self) -> &'static str {
        "Bitcoin"
    }

    fn balance(&self) -> f64 {
        self.balance
    }

    fn get_successor(&mut self) -> Option<&mut Box<dyn Account>> {
        self.next.as_mut()
    }

    fn pay_money(&mut self, amount: f64) {
        self.balance -= amount;
    }
}

fn main() {
    // Let's prepare a chain like below
    //      $bank->$paypal->$bitcoin
    //
    // First priority bank
    //      If bank can't pay then paypal
    //      If paypal can't pay then bit coin

    let bitcoin = Box::new(Bitcoin::new(300.0, None)); // Bitcoin with balance 300
    let paypal = Box::new(Paypal::new(200.0, Some(bitcoin))); // Paypal with balance 200
    let mut bank = Bank::new(100.0, Some(paypal)); // Bank with balance 100

    // Let's try to pay using the first priority i.e. bank
    bank.pay(259.0);
}
```