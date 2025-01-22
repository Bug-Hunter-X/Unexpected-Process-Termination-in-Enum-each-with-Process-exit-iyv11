# Unexpected Process Termination in Elixir Enum.each

This repository demonstrates a subtle bug that can occur in Elixir when using `Process.exit/2` within an `Enum.each/2` loop.  The issue stems from the immediate termination of the process upon encountering a certain condition, potentially interrupting the iteration and leading to incomplete operations.

The provided `bug.exs` file shows the problematic code, while `bugSolution.exs` presents a corrected approach.

## Problem
The original code uses `Process.exit/2` to terminate the process if a specific element (3 in this case) is encountered. This immediately halts the `Enum.each` and any subsequent processing steps are skipped.