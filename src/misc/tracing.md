
# Rust tracing
- Tokio Tracing
- Rustracing
- Minitrace

## Timing
- std::time::Instant::now()
- clock_gettime(CLOCK_MONOTONIC, ...)
- clock_gettime(CLOCK_MONOTONIC_COARCE, ...), 4ms 精度

- tsc, TimeStampCounter register
  - Increase per tick
  - 8ns
  - Nanoseconds precision
- tsc tuning:
  - constant_tsc
  - nonstop_tsc
  - unsynchronized among cores
    - threads scheduling
  - synchronize tsc
    - offset and rate
      - libc::sched_setaffnity()
      - retrieve tsc and systime twice
    - TSC + CPU ID
      - RDTSC + CPUID
      - RDTSCP

## Collection
- std::sync::mpsc::channel::send()
- crossbeam::Sender::send()
- Collect in thread-local buffer


## Context
- Replace context with macro
