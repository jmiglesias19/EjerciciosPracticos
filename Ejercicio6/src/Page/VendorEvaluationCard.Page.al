page 50100 VendorEvaluationCard
{
    Caption = 'Vendor Evaluation Card';
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = VendorEvaluationHeader;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("No."; Rec."No.")
                {
                    Caption = 'No.';
                    Editable = false;
                }
                field("EvaluationDate"; Rec."EvaluationDate")
                {
                }
                field("Archive Date"; Rec."Archive Date")
                {
                }
                field("Blocked"; Rec."Blocked")
                {
                }
                field("Vendor No."; Rec."Vendor No.")
                {
                }
                field("Vendor Name"; Rec."Vendor Name")
                {
                }
                field("Result"; Rec."Result")
                {
                }
                field("Responsible"; Rec."Responsible")
                {
                }

                group(SIIInformation)
                {
                    Caption = 'Information SII';
                    field("OperationDescription"; Rec.OperationDescription)
                    {
                        Caption = 'Operation description';
                        MultiLine = true;
                    }
                }



            }

            part(VendorEvaluationList; VendorEvaluationList)
            {

            }

        }

    }
}