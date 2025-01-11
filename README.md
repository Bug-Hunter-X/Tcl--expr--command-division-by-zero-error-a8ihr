# Tcl [expr] command division by zero error

This repository demonstrates a common error in Tcl scripts involving the [expr] command and division by zero. The script `bug.tcl` contains a procedure that attempts to divide by zero, resulting in an error. The script `bugSolution.tcl` shows a solution that handles this potential error gracefully.

## Bug Description:

The `buggyProc` procedure in `bug.tcl` takes two arguments, `a` and `b`. If `a` is 0, it should return 0. However, the `expr` command is used to perform division even when `a` is 0, which leads to a runtime error. 

## Solution:

The `bugSolution.tcl` script demonstrates a robust approach by incorporating error handling using a `try...catch` construct to prevent the script from crashing. 
