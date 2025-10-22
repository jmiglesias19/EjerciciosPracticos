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
                field(Code;
                Rec.Code)
                {
                    Caption = 'Code';
                }

                field(Description; Rec.Description)
                {
                    Caption = 'Description';

                }

                field("Brand Products"; BrandProductsCounter)
                {
                    Caption = 'Brand Products';
                    Editable = false;
                    ToolTip = 'Specifies the number of products which use this brand.';
                }

                field(Blocked; Rec.Blocked)
                {
                    Caption = 'Blocked';

                }

                field("Blockage Expiration"; Rec."Blockage Expiration")
                {
                    Caption = 'Blockage Expiration';
                    Editable = false;
                }

            }
        }
    }

    var
        BrandProductsCounter: Text[10];

    trigger OnAfterGetRecord()

    begin
        Rec.CalcFields("Brand Products");

        if Rec."Brand Products" = 0 then
            BrandProductsCounter := '-'
        else
            BrandProductsCounter := Format(Rec."Brand Products");
    end;

}