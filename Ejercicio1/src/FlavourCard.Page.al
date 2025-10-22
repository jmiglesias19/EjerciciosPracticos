page 50101 "Flavour Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Flavour;
    Caption = 'Flavour Card';

    layout
    {
        area(Content)
        {
            group(FlavourCard)
            {
                Caption = 'Flavour Card';
                field(Code; Rec.Code)
                {

                }

                field(Description; Rec.Description)
                {

                }

                field("Flavour Products"; Rec."Flavour Products")
                {
                    // trigger OnValidate()
                    // var
                    //     FlavourRecord: Record "Flavour";
                    // begin

                    // end;
                }
            }
        }
    }

    actions
    {
    }

}