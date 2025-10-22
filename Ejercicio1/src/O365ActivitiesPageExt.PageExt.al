pageextension 50101 "O365 Activities Page Ext" extends "SO Processor Activities" // Página 1310
{
    layout
    {
        // Añade un NUEVO grupo "Bloqueos" ANTES del grupo "Ongoing Sales"
        addfirst(content)
        {
            cuegroup(Blockages)
            {
                Caption = 'Blockages'; // El título que te pidieron

                field("Blocked Brands"; Rec."Blocked Brands")
                {
                    ApplicationArea = All;
                    Caption = 'Blocked Brands';
                    StyleExpr = BlockedBrands;
                    DrillDownPageId = "Brand List";
                    ToolTip = 'Specifies the number of blocked brands.';
                }
            }
        }
    }

    var
        BlockedBrands: Text;

    trigger OnAfterGetRecord()
    begin
        Rec.CalcFields("Blocked Brands");

        if Rec."Blocked Brands" = 0 then
            BlockedBrands := 'Favorable'
        else
            if Rec."Blocked Brands" <= 5 then
                BlockedBrands := 'Ambiguous'
            else
                BlockedBrands := 'Unfavorable';
    end;
}