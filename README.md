# CALC2000 (COBOL) — Future Value Investment Calculator

This COBOL program is designed to calculate the future value of an investment based on a fixed annual interest rate over a specified term of years. To demonstrate iterative processing, the program performs the calculation for an initial amount, then automatically doubles the investment amount twice, recalculating and displaying the results for each phase.

## What it does
For each execution, the program performs the following logic:
1. **Initial Calculation:** Computes the future value for the starting investment of 1,000.
2. **First Doubling:** Uses a COMPUTE statement to double the investment amount to 2,000 and recalculates.
3. **Second Doubling:** Doubles the investment amount again to 4,000 and performs a final calculation.

The future value is computed year-by-year using a compounding interest formula within a perform-until loop.

## COBOL Concepts Used
In this assignment, I implemented the following enterprise computing concepts:
* **Program Header Documentation:** Organized identification division with programmer details and project metadata.
* **Working-Storage Data Definition:** Defining numeric items with specific PIC clauses and VALUE constants.
* **Numeric Editing:** Using ZZ,ZZZ,ZZ9 and ZZZ,ZZZ.99 picture strings to format raw numbers into human-readable currency formats.
* **Procedural Logic:** Utilizing PERFORM and PERFORM UNTIL for paragraph-based execution and looping.
* **Arithmetic Operations:** Using COMPUTE for doubling values and calculating compound interest.

## Program Output
Below is a screenshot of the program execution showing the three calculation phases:

![Program Output](assets/CALC2000_Output.png)

## Author
* Tristan Joubert GitHub: [@TJoubert004](https://github.com/TJoubert004)
# CALC2000
