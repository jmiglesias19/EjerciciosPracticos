page 50102 "Brand List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Brand;
    Caption = 'Brand List';

    layout
    {
        area(Content)
        {
            repeater(Fila) //el repeater sirve para crear una nueva fila
            {
                field(Code; Rec.Code)
                {
                    Caption = 'Code';
                }

                field(Description; Rec.Description)
                {
                    Caption = 'Description';

                }

                field("Brand Products"; Rec."Brand Products")
                {
                    Caption = 'Brand Products';

                }

                field(Blocked; Rec.Blocked)
                {
                    Caption = 'Blocked';

                }

                field("Blockage Expiration"; Rec."Blockage Expiration")
                {
                    Caption = 'Blockage Expiration';

                }

            }
        }
    }

    actions
    {
    }

}