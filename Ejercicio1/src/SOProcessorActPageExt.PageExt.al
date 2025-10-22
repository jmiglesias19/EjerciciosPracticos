pageextension 50101 "SO Processor Act. Page Ext" extends "SO Processor Activities"
{
    layout
    {
        addfirst(content)
        {
            cuegroup(Blockages)
            {
                Caption = 'Blockages';

                field("Blocked Brands"; Rec."Blocked Brands")
                {
                    ApplicationArea = All;
                    Caption = 'Blocked Brands';
                    StyleExpr = BlockedBrands;
                    DrillDownPageId = "Brand List";
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
            BlockedBrands := Format(PageStyle::Favorable)
        else
            if Rec."Blocked Brands" <= 5 then
                BlockedBrands := Format(PageStyle::Ambiguous)
            else
                BlockedBrands := Format(PageStyle::Unfavorable);
    end;
}