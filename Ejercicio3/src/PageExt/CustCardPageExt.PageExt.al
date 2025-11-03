pageextension 50100 CustCardPageExt extends "Customer Card"
{
    layout
    {
        addafter("General")
        {
            group("Ejercicio 3")
            {
                Caption = 'Ejercicio 3';
                field("Name2"; Rec."Name 2")
                {
                    ApplicationArea = All;
                    Caption = 'Name 2';
                }
            }
        }

    }

}