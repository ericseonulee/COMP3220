                                     -- Chapter 33 - Program 1
-- This is a generic package to generate random numbers in the
--  range of 0.00000 to just less than 1.00000 with as many
--  significant digits as the type FLOAT_ITEM.  This package uses
--  the Linear Congruential Method of random number generation as
--  discussed in "The Art of Computer Programming" volume 2 by
--  Donald Knuth.  The method used follows;
--
--  X(n + 1) = (A * X(n) + C) mod M
--
--  X(n + 1) is the new random number
--  X(n)     is the previous random number or the seed
--  M        is 1.0 for the floating point system
--  A        is 7.0 for the floating point system
--  C        is 13.0 / 31.0 for the floating point system
--  X(0)     is zero by default
--  X(0)     is the number provided if forced with Force_Seed
--  X(0)     is generated as follows when Set_Seed is called;
--        1.   The real time clock is read from the system
--        2.   The hours and minutes are stripped off
--        3.   The resulting number of seconds are divided by
--              60.0 to get the fraction of a minute that has
--              elapsed since midnight

generic
   type FLOAT_ITEM is digits <>;
package Random is

        -- This procedure uses the system clock to set the seed.
   procedure Set_Seed;

        -- This procedure sets the seed to the input value.
   procedure Force_Seed(Start_Seed : FLOAT_ITEM);

        -- This Function returns the current seed which is also
        --  the value of the previous random number returned.
   function Get_Seed return FLOAT_ITEM;

        -- This function returns a random number from 0.0 to 1.0
   function Random_Number return FLOAT_ITEM;

end Random;
