tableextension 50104 "CustomerMaster" extends Customer
{
    fields
    {
        field(50100; "CustomerType"; Code[20])
        {
            AllowInCustomizations = Always;
            Caption = 'Customer Type';
            TableRelation = "CustomerType";
            ToolTip = 'Specifies the type of customer.';

            trigger OnValidate()
            var
                CustMgt: Codeunit "ValidateCU";
            begin
                CustMgt.ValidateCustomerType(Rec);
            end;
        }

        field(50104; "CustomerTypeDescription"; Text[50])
        {
            AllowInCustomizations = Always;
            Caption = 'Customer Type Description';
            ToolTip = 'Specifies a description of the customer type.';
        }

        field(50101; "Sector"; Code[20])
        {
            AllowInCustomizations = Always;
            Caption = 'Sector';
            TableRelation = "CustomerSector";
            ToolTip = 'Specifies the sector of the customer.';

            trigger OnValidate()
            var
                CustMgt: Codeunit "ValidateCU";
            begin
                CustMgt.ValidateSector(Rec);
            end;
        }

        field(50105; SectorDescription; Text[50])
        {
            AllowInCustomizations = Always;
            Caption = 'Sector Description';
            ToolTip = 'Specifies a description of the customer sector.';
        }

        field(50102; "Activity"; Code[20])
        {
            AllowInCustomizations = Always;
            Caption = 'Activity';
            TableRelation = "CustomerActivity";
            ToolTip = 'Specifies the activity of the customer.';

            trigger OnValidate()
            var
                CustMgt: Codeunit "ValidateCU";
            begin
                CustMgt.ValidateActivity(Rec);
            end;
        }

        field(50106; ActivityDescription; Text[50])
        {
            AllowInCustomizations = Always;
            Caption = 'Activity Description';
            ToolTip = 'Specifies a description of the customer activity.';
        }

        field(50103; "Category"; Code[20])
        {
            AllowInCustomizations = Always;
            Caption = 'Category';
            TableRelation = "CustomerCategory";
            ToolTip = 'Specifies the category of the customer.';

            trigger OnValidate()
            var
                CustMgt: Codeunit "ValidateCU";
            begin
                CustMgt.ValidateCategory(Rec);
            end;
        }

        field(50107; CategoryDescription; Text[50])
        {
            AllowInCustomizations = Always;
            Caption = 'Category Description';
            ToolTip = 'Specifies a description of the customer category.';
        }

        field(50108; RiskGrantedMUSA; Decimal)
        {
            AllowInCustomizations = Always;
            Caption = 'Risk Granted MUSA';
            ToolTip = 'Specifies the risk granted to the customer in MUSA.';

            trigger OnValidate()
            var
            begin
                if (Rec.RiskGrantedMUSA < 0) or (Rec.RiskGrantedMUSA > 10) then begin
                    Message('Invalid Risk Granted MUSA. It should be between 0 and 10.');
                    Clear(Rec.RiskGrantedMUSA);
                end;
            end;
        }

        field(50109; ExceededRiskAmount; Decimal)
        {
            AllowInCustomizations = Always;
            Caption = 'Exceeded Risk Amount';
            ToolTip = 'Specifies the amount by which the customer has exceeded their risk limit.';
        }
    }
}