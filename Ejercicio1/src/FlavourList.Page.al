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
                }

                field("Flavour Products"; Rec."Flavour Products")
                {
                    Caption = 'Flavour Products';
                }
            }
        }
    }

    actions
    {
    }

}