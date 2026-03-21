# Performance and Efficiency Rules

Optimization priorities:
1. Functional correctness
2. Operational safety
3. Low memory usage
4. Low CPU cycles
5. High throughput
6. Minimal external dependencies

When optimizing:
- Remove unnecessary abstractions.
- Prefer streaming over full-buffer loading when practical.
- Prefer linear-time algorithms over complex generality.
- Explain the tradeoff when choosing simplicity over maximum speed.
