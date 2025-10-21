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