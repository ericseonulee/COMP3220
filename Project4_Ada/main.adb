with Ada.Text_IO, Ada.Float_Text_IO, Ada.Integer_Text_IO, Binary, Random;
use Ada.Text_IO, Ada.Float_Text_IO, Ada.Integer_Text_IO, Binary;

procedure Main is

   My_Array : BINARY_ARRAY;
   My_Value : Integer;
   Another_Array : BINARY_ARRAY;
   Another_Value : Integer;
   Array3 : BINARY_ARRAY;
   Value3 : Integer;
   Array4 : BINARY_ARRAY;
   Value4 : Integer;

begin
   My_Array := Generate_Array;
   Another_Array := Generate_Array;

   Put_Line("Printing Random Array My_Array");
   Print_Bin_Arr(My_Array);
   New_Line(2);

   Put_Line("Printing Integer value of My_Array");
   My_Value := Bin_To_Int(My_Array);
   Put(My_Value, 1);
   New_Line(2);

   Put_Line("Printing Array created from Int_To_Bin function: Int_To_Bin(55);");
   Print_Bin_Arr(Int_To_Bin(55));
   New_Line(2);

   Put_Line("Printing value of My_Array + Another_Array, first + overload");
   Put("Int value of My_Array: ");
   Put(My_Value, 1);
   Another_Value := Bin_To_Int(Another_Array);
   New_Line;
   Put("Int value of Another_Array: ");
   Put(Another_Value, 1);
   New_Line;
   Value3 := My_Value + Another_Value;
   Put("Int value of Array3: ");
   Put(Value3, 1);
   New_Line;
   Put("Binary value of Array3: ");
   Array3 := My_Array + Another_Array;
   Print_Bin_Arr(Array3);
   New_Line(2);

   Put_Line("Printing value of Int_To_Bin(10) + Array3, second + overload");
   Put("Int value of Array3 after addition: ");
   Array3 := Int_To_Bin(10) + Value3;
   Value3 := Bin_To_Int(Array3);
   Put(Value3, 1);
   New_Line;
   Put("Current binary value of Array3: ");
   Print_Bin_Arr(Array3);
   New_Line(2);

   Put_Line("Printing value of My_Array - Another_Array, first - overload");
   Put("Int value of My_Array: ");
   Put(My_Value, 1);
   Another_Value := Bin_To_Int(Another_Array);
   New_Line;
   Put("Int value of Another_Array: ");
   Put(Another_Value, 1);
   New_Line;
   Value4 := My_Value - Another_Value;
   Put("Int value of Array 4 (Note, this value will be incorrect if first number is smaller than second): ");
   Put(Value4, 1);
   New_Line;
   Put("Binary value of Array 4: ");
   Array4 := My_Array - Another_Array;
   Print_Bin_Arr(Array4);
   New_Line(2);

   Put_Line("Printing value of Int_To_Bin(16384) - My_Array, second - overload");
   Put("Int value of My_Array: ");
   Put(My_Value, 1);
   New_Line;
   Array4 := Int_To_Bin(16384) - My_Value;
   Value4 := Bin_To_Int(Array4);
   Put("Int value of Array4 after modification: ");
   Put(Value4, 1);
   New_Line;
   Put("Binary value of Array4: ");
   Print_Bin_Arr(Array4);
   New_Line(2);

   Put_Line("Reversing and printing Array4:");
   Reverse_Bin_Arr(Array4);

   null;
end Main;
