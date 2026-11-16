# BigInt Calculator & Software Development Fundamentals

A Java arbitrary-precision arithmetic implementation is the flagship project in this repository. The remaining directories preserve coursework and practical exercises in C build systems, OCaml, Linux, shell scripting and Python.

## Flagship: Arbitrary-Precision Calculator

**[Explore the BigInt Calculator](bigint-calculator/)**

The calculator implements custom arbitrary-precision integer and decimal arithmetic rather than relying on Java's `java.math` arithmetic implementations.

Highlights:
- Arbitrary-precision integer and decimal operations.
- Addition, subtraction, multiplication and division.
- Decimal calculations with 30 digits after the decimal point.
- Division-by-zero handling.
- Command-line interface, runnable JAR and Python wrapper.
- Ant build configuration, Maven descriptor, tests and project report.

See the [calculator README](bigint-calculator/README.md) for build instructions, usage and implementation details.

## Coursework and practice

| Area | Directory | Contents |
|---|---|---|
| C linking and build systems | [`c-linking-and-build-systems/`](c-linking-and-build-systems/) and [assignment materials](problem-statements/) | Multi-binary C build, shared headers, modular source files and Make |
| OCaml functional programming | [`ocaml-functional-programming/`](ocaml-functional-programming/) | Recursion, pattern matching, lists, trees, variants, options and exceptions |
| Additional OCaml | [`ocaml-advanced-practice/`](ocaml-advanced-practice/) | Further functional-programming exercises |
| Linux command line | [`linux-shell-1/`](linux-shell-1/), [`linux-shell-2/`](linux-shell-2/), [`linux-shell-3/`](linux-shell-3/) | Command-line exercises and captured sessions |
| Shell scripting | [`linux-shell-scripting/`](linux-shell-scripting/) | File operations, automation, CSV processing and text utilities |
| Python text processing | [`python-text-processing-exercises/`](python-text-processing-exercises/) | File processing, text analysis, sorting and notebook exercises |
| Original assignment statements | [`problem-statements/`](problem-statements/) | Supporting specifications and assignment documents |

## Repository structure

Exact duplicates of the topic-oriented directories (the original assignment documents and the Assignment 4, 5 and 10 folders) were removed. The original assignment folders below are kept because their contents differ from the topic-oriented copies (later revisions or extra submission files such as zips):

| Original folder | Topic-oriented directory |
|---|---|
| `Assignment 3 - OCaml Practice Problems/` | `ocaml-functional-programming/` |
| `Assignment 6 - Linux shell commands/` | `linux-shell-3/` |
| `Assignment 7 - OCaml Additional Practice/` | `ocaml-advanced-practice/` |
| `Assignment 8 - Shell Scripting/` | `linux-shell-scripting/` |
| `Assignment 9 - Python/` | `python-text-processing-exercises/` |

## Build and run

- BigInt calculator: `ant jar`, then `java -jar build/jar/aarithmetic.jar <int|float> <add|sub|mul|div> <a> <b>` (see [bigint-calculator/README.md](bigint-calculator/README.md)).
- C multi-binary build: from `c-linking-and-build-systems/`, `make` builds all targets (`make run_math`, `make run_string`, `make run_data`, `make run_all_ops`, `make clean`; `make DEBUG=1` adds debug flags), per its `Makefile`.

## Limitations

- The calculator does not validate its operands: an empty or non-numeric string is not rejected cleanly (`bigint-calculator/src/main/java/arbitraryarithmetic/BigInteger.java`, constructor).
- Shell, OCaml and Python exercises are coursework solutions with no automated tests.

## License

See [LICENSE](LICENSE).
