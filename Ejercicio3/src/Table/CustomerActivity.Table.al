table 50102 CustomerActivity
{
    Caption = 'Customer Activity';
    DataClassification = ToBeClassified;
    LookupPageId = "ActivityList";
    DrillDownPageId = "ActivityList";

    fields
    {
        field(1; Activity; Code[20])
        {
            AllowInCustomizations = Always;
            Caption = 'Activity';
            NotBlank = true;
            ToolTip = 'Specifies the activity.';
            Editable = true;
        }

        field(2; ActivityDescription; Text[50])
        {
            AllowInCustomizations = Always;
            Caption = 'Description';
            ToolTip = 'Specifies a description of the activity.';
            Editable = true;
        }
    }

    keys
    {
        key(Key1; Activity)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; Activity)
        {
        }

        fieldgroup(Brick; Activity)
        {
        }
    }



}