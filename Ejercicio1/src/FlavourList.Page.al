page 50100 "Flavour List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Flavour;
    Caption = 'Flavour List';

    layout
    {
        area(Content)
        {
            repeater(Fila)
            {
                field(Code; Rec.Code)
                {
                    Caption = 'Code';
                }

                field(Description; Rec.Description)
                {
                    Caption = 'Description';
                    Editable = true;
                }

                field("Flavour Products"; Rec."Flavour Products")
                {
                    Caption = 'Flavour Products';
                }
            }
        }
    }

    trigger OnAfterGetRecord()
    var
        FlavourProductsCounter: Text[10];
    begin
        Rec.CalcFields("Flavour Products");

        if Rec."Flavour Products" = 0 then
            FlavourProductsCounter := '-'
        else
            FlavourProductsCounter := Format(Rec."Flavour Products");
    end;

}