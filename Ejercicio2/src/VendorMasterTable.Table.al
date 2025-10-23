table 50100 "Vendor Master Table"
{
    Caption = 'Vendor Master Table';
    DataClassification = ToBeClassified;
    DrillDownPageId = "Vendor Master Table Page";
    LookupPageId = "Vendor Master Table Page";

    fields
    {
        field(1; Type; Enum Type)
        {
            AllowInCustomizations = Always;
            Caption = 'Type';
            ToolTip = 'Specifies the type.';
        }

        field(2; Code; Code[10])
        {
            AllowInCustomizations = Always;
            Caption = 'Type';
            NotBlank = true;
            ToolTip = 'Specifies the type.';
        }

        field(3; Description; Text[100])
        {
            AllowInCustomizations = Always;
            Caption = 'Description';
            ToolTip = 'Specifies the description.';
        }

        field(4; Sector; Code[20])
        {
            AllowInCustomizations = Always;
            Caption = 'Sector';
            ToolTip = 'Specifies the sector.';
        }

        field(5; Activity; Code[20])
        {
            AllowInCustomizations = Always;
            Caption = 'Activity';
            ToolTip = 'Specifies the activity.';
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

        fieldgroup(Brick; Code) { }
    }


    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}