table 50100 "Flavour"
{
    Caption = 'Flavour';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Code; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }

        field(2; Description; Text[100])
        {
            Caption = 'Description';
        }

        field(3; "Flavour Products"; Integer) //este campo muestra el numero de productos que tienen este sabor. si no hay, poner "-".
        {
            Caption = 'Flavour Products';
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