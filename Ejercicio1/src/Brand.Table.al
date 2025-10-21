table 50101 "Brand"
{
    Caption = 'Brand';
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

        field(3; "Brand Products"; Integer) //se muestra en numero de productos que tienen esta marca. si no hay, poner "-".
        {
            Caption = 'Brand Products';
        }

        field(4; Blocked; Boolean)
        {
            Caption = 'Blocked';
        }

        field(5; "Blockage Expiration"; Date) //si la marca esta bloqueada, en este campo se pondra la fecha del ultimo dia del mes en el mes que se marco
                                              //ej: se marca el 21/10/25 --> se pondra 31/10/25
        {
            Caption = 'Blockage Expiration';
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