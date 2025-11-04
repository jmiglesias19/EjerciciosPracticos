page 50104 RouteList
{
    Caption = 'Route List';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Route;

    layout
    {
        area(Content)
        {
            repeater(RouteGroup)
            {
                Caption = 'Route Group';
                field(RouteCode; Rec.Code)
                {
                    Caption = 'Route Code';
                }

                field(RouteDescription; Rec.RouteDescription)
                {
                    Caption = 'Route Description';
                }
            }
        }
    }
}