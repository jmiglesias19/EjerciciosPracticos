table 50100 CustomerType
{
    Caption = 'Customer Type';
    DataClassification = ToBeClassified;
    LookupPageId = "CustomerTypeList";
    DrillDownPageId = "CustomerTypeList";

    fields
    {
        field(1; CustomerType; Code[20])
        {
            AllowInCustomizations = Always;
            Caption = 'Customer type';
            NotBlank = true;
            ToolTip = 'Specifies the type of customer.';
            Editable = true;
        }

        field(2; CustomerDescription; Text[50])
        {
            AllowInCustomizations = Always;
            Caption = 'Description';
            ToolTip = 'Specifies a description of the customer type.';
            Editable = true;
        }
    }

    keys
    {
        key(Key1; CustomerType)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; CustomerType)
        {
        }

        fieldgroup(Brick; CustomerType)
        {
        }
    }



}