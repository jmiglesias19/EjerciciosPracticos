enum 50100 "VendorEvaluationResult"
{
    Extensible = true;
    Caption = 'Vendor Evaluation Result';

    value(0; "")
    {
        Caption = '', Locked = true;
    }

    value(1; "Open")
    {
        Caption = 'Open';
    }
    value(2; "Accepted")
    {
        Caption = 'Accepted';
    }
    value(3; "Rejected")
    {
        Caption = 'Rejected';
    }
    value(4; "In Testing")
    {
        Caption = 'In Testing';
    }
}