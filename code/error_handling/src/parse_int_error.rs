use std::error::Error;
use std::fmt;

#[derive(Debug, Clone, PartialEq, Eq)]
pub struct ParseIntError {
    pub kind: IntErrorKind,
}

#[derive(Debug, Clone, PartialEq, Eq)]
pub enum IntErrorKind {
    Empty,
    InvalidDigit,
    PosOverflow,
    NegOverflow,
    Zero,
}

impl Error for ParseIntError {
    fn description(&self) -> &str {
        match self.kind {
            IntErrorKind::Empty => "cannot parse integer from empty string",
            IntErrorKind::InvalidDigit => "invalid digit found in string",
            IntErrorKind::PosOverflow => "number too large to fit in target type",
            IntErrorKind::NegOverflow => "number too small to fit in target type",
            IntErrorKind::Zero => "number would be zero for non-zero type",
        }
    }
}

impl fmt::Display for ParseIntError {
    #[allow(deprecated)]
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        self.description().fmt(f)
    }
}
