page 50103 VendorEvaluationsArchived
{
    Caption = 'Vendor Evaluations Archived';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = VendorEvaluationHeader;

    layout
    {
        area(Content)
        {
            repeater(Archived)
            {
                Caption = 'Vendor Evaluation Archived';
                // field(Name; NameSource)
                // {

                // }
            }
        }
    }
}