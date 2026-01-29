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

           05  future-value            pic 9(7)v99.
           05  year-counter            pic 999.
           05  edited-whole-value      pic zz,zzz,zz9.
           05  edited-decimal-value    pic zzz,zzz.99.
           05  edited-intrest-rate     pic zzz,zzz9.9.
           05  edited-number-of-years  pic zzz,zzz,zz.

       procedure division.

       000-calculate-future-values.
           display "Calculating Future Values".
      * First run
           perform 100-calculate-future-value
      * Second run
           compute investment-amount = investment-amount * 2.
           perform 100-calculate-future-value.
      * Third run
           compute investment-amount = investment-amount * 2.
           perform 100-calculate-future-value.

           display "End of session.".
           stop run.

       100-calculate-future-value.

           move investment-amount to future-value
           move 1 to year-counter
           perform 120-calculate-next-fv
              until year-counter > number-of-years
           perform 140-display-values.

       120-calculate-next-fv.

           compute future-value rounded =
               future-value +
                   (future-value * yearly-interest-rate / 100).
           add 1 to year-counter.
      
       140-display-values.

           move investment-amount to edited-whole-value.
           move yearly-interest-rate to edited-intrest-rate.
           move number-of-years to edited-number-of-years.
           move future-value to edited-decimal-value.
           display "-----------------------------------".
           display "Investment Amount = " edited-whole-value.
           display "Number of Years   = " edited-number-of-years.
           display "Yearly Interest   = " edited-intrest-rate.
           display "Future value      = " edited-decimal-value.
