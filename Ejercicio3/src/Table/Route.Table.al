table 50104 Route
{
    Caption = 'Route';
    DataClassification = ToBeClassified;
    LookupPageId = RouteList;
    DrillDownPageId = RouteList;

    fields
    {
        field(1; Code; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
            ToolTip = 'Specifies the code of the route.';
        }

        field(2; RouteDescription; Text[100])
        {
            Caption = 'Route description';
            ToolTip = 'Specifies the description of the route.';
        }
    }

    keys
    {
        key(Key1; Code)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; Code)
        {
        }

        fieldgroup(Brick; Code)
        {
        }
    }
}