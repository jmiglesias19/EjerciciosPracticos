page 50103 "Brand Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Brand;
    Caption = 'Brand Card';

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Name; NameSource)
                {

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}