page 50102 ActivityList
{
    Caption = 'Activity List';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = CustomerActivity;

    layout
    {
        area(Content)
        {
            repeater(ActivityGroup)
            {
                Caption = 'Activity Group';
                field(CustomerActivity; Rec.Activity)
                {
                    Caption = 'Activity';
                }

                field(ActivityDescription; Rec.ActivityDescription)
                {
                    Caption = 'Description';
                }
            }
        }
    }
}