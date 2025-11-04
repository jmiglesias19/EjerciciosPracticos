table 50103 CustomerCategory
{
    Caption = 'Customer Category';
    DataClassification = ToBeClassified;
    LookupPageId = "CategoryList";
    DrillDownPageId = "CategoryList";

    fields
    {
        field(1; Category; Code[20])
        {
            AllowInCustomizations = Always;
            Caption = 'Category';
            NotBlank = true;
            ToolTip = 'Specifies the category.';
            Editable = true;
        }

        field(2; CategoryDescription; Text[50])
        {
            AllowInCustomizations = Always;
            Caption = 'Description';
            ToolTip = 'Specifies a description of the category.';
            Editable = true;
        }
    }

    keys
    {
        key(Key1; Category)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; Category)
        {
        }

        fieldgroup(Brick; Category)
        {
        }
    }



}