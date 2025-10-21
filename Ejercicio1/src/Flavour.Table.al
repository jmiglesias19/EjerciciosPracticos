table 50100 "Flavour"
{
    Caption = 'Flavour';
    DataClassification = ToBeClassified;
    LookupPageId = "Flavour List";
    DrillDownPageId = "Flavour Card";

    fields
    {
        field(1; Code; Code[10])
        {
            AllowInCustomizations = Never;
            Caption = 'Code';
            NotBlank = true;
            ToolTip = 'Specifies the flavour code.';
        }

        field(2; Description; Text[100])
        {
            AllowInCustomizations = Never;
            Caption = 'Description';
            ToolTip = 'Specifies the description of the flavour.';
            Editable = false;
        }

        field(3; "Flavour Products"; Integer) //este campo muestra el numero de productos que tienen este sabor. si no hay, poner "-".
        {
            AllowInCustomizations = Never;
            Caption = 'Flavour Products';
            ToolTip = 'Specifies the number of products which use this flavour.';
            Editable = false;
            // FieldClass = FlowField;
            // CalcFormula = count(Flavour);
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