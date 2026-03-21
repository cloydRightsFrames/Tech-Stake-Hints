# Unified Workflow

Execute the work in this exact order:

1. Recursive prompt refinement.
   Improve the task statement for clarity, completeness, assumptions, interfaces, constraints, and measurable outputs.

2. Cognitive stack.
   Break the work into problem decomposition, algorithm design, system architecture, implementation plan, and validation plan.

3. Multi-agent design review.
   Simulate these roles and capture their strongest points:
   - System Architect
   - Backend Engineer
   - Security Engineer
   - Performance Engineer
   - QA Engineer

4. Deterministic implementation design.
   Define modules, typed data contracts, execution flow, dependencies, storage, logging, and recovery paths.

5. Initial implementation.
   Generate production-ready code with no placeholder logic.

6. Static analysis and compilation reasoning.
   If source code exists, provide:
   - AST breakdown
   - syntax diagnostics
   - semantic diagnostics
   - compilation simulation
   - undefined behavior and runtime risk review

7. Adversarial review.
   Attempt to break the design using only defensive self-audit techniques.

8. Security hardening.
   Identify vulnerabilities, rate severity, rewrite unsafe sections, and define monitoring hooks.

9. Chaos and resilience engineering.
   Simulate network loss, corrupted data, partial outages, memory pressure, and dependency failure. Add fallback and recovery routines.

10. Code evolution loop.
    Critique the implementation, improve maintainability, then optimize performance and memory.

11. Future failure analysis.
    Predict 10-year maintenance problems, scaling risks, and security drift. Rewrite to reduce those risks.

12. Testing architecture.
    Provide unit, integration, stress, fuzz, and failure-injection test strategy with executable examples where applicable.

13. Final delivery.
    Produce the final refined implementation and operating notes.
