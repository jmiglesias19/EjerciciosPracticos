page 50102 VendorEvaluationList
{
    Caption = 'Vendor Evaluation List';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = VendorEvaluationHeader;
    CardPageId = VendorEvaluationCardDocument;
    SourceTableView = where(Archived = const(false));

    layout
    {
        area(Content)
        {
            repeater(List)
            {
                Caption = 'Vendor Evaluation List';
                field(EvaluationNo; Rec.EvaluationNo)
                {

                }

                field(EvaluationDate; Rec.EvaluationDate)
                {

                }

                field(Blocked; Rec.Blocked)
                {

                }

                field(VendorNo; Rec.VendorNo)
                {

                }

                field(VendorName; Rec.VendorName)
                {

                }

                field(Result; Rec.Result)
                {

                }

                field(Responsible; Rec.Responsible)
                {

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Archive)
            {
                Caption = 'Archived Evaluations';
                Image = Archive;
                ToolTip = 'Button used to open the archived evaluations page.';
                trigger OnAction()
                var
                    VEARec: Page VendorEvaluationsArchived;
                begin
                    VEARec.Run();
                end;
            }
        }
    }

    var
        DefaultVendorCode: Code[20];

    trigger OnInit()
    begin
        DefaultVendorCode := '';
    end;

    trigger OnNewRecord(Algo: Boolean)
    begin
        if DefaultVendorCode <> '' then
            Rec.VendorNo := DefaultVendorCode;

    end;

    procedure SetDefaultVendor(VendorCodePar: Code[20])
    begin
        DefaultVendorCode := VendorCodePar;
    end;
}