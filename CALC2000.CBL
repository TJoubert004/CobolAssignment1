       identification division.

       program-id. calc2000.

      *Programmer: Tristan Joubert
      *Date: 1/27/26
      *GitHub URL: https://github.com/tristjoubert
      *Description: This program calculates future values for 
      * an investment and doubles the investment amount twice

       environment division.

       input-output section.

       data division.

       file section.

       working-storage section.
      
       01  input-values.

           05  investment-amount       pic 9(7)v99  value 1000.00.
           05  number-of-years         pic 99       value 10.
           05  yearly-interest-rate    pic 99v9     value 05.5.

       01  work-fields.

           05  future-value                pic 9(7)v99.
           05  year-counter                pic 999.

       procedure division.

       000-calculate-future-values.

           perform 100-calculate-future-value
               until number-entered = zero.
           display "End of session.".
           stop run.

       100-calculate-future-value.

           display "----------------------------------------".
           display "To end the program, enter 0.".
           display "To perform another calculation, enter 1.".
           accept  number-entered.
           display "----------------------------------------".
           if number-entered = 1
               perform 110-get-user-values
               move investment-amount to future-value
               move 1 to year-counter
               perform 120-calculate-next-fv
                   until year-counter > number-of-years
               move future-value to edited-future-value
               display "Future value = " edited-future-value.

       110-get-user-values.

           display "Enter investment amount (xxxxx).".
           accept  investment-amount.
           display "Enter number of years (xx).".
           accept  number-of-years.
           display "Enter yearly interest rate (xx.x).".
           accept  yearly-interest-rate.

       120-calculate-next-fv.

           compute future-value rounded =
               future-value +
                   (future-value * yearly-interest-rate / 100).
           add 1 to year-counter.

