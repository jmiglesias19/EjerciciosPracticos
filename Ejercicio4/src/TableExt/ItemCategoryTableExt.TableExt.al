tableextension 50100 ItemCategoryTableExt extends "Item Category"
{
    fields
    {
        field(50100; Classification; Enum ClassificationEnum)
        {
            AllowInCustomizations = Always;
            Caption = 'Classification';
            DataClassification = ToBeClassified;
            ToolTip = 'Specifies the classification of the item category.';
        }
        field(50101; Subfamily; Code[20])
        {
            AllowInCustomizations = Always;
            Caption = 'Subfamily';
            DataClassification = ToBeClassified;
        }
        field(50102; Width; Integer)
        {
            AllowInCustomizations = Always;
            Caption = 'Width';
            DataClassification = ToBeClassified;
        }
        field(50103; Length; Integer)
        {
            AllowInCustomizations = Always;
            Caption = 'Length';
            DataClassification = ToBeClassified;
        }
        field(50104; Thickness; Integer)
        {
            AllowInCustomizations = Always;
            Caption = 'Thickness';
            DataClassification = ToBeClassified;
        }
        field(50105; Surface; Integer)
        {
            AllowInCustomizations = Always;
            Caption = 'Surface';
            Editable = false;
        }
        field(50106; Density; Integer)
        {
            AllowInCustomizations = Always;
            Caption = 'Density';
            DataClassification = ToBeClassified;
        }
        field(50107; Volume; Integer)
        {
            AllowInCustomizations = Always;
            Caption = 'Volume';
            DataClassification = ToBeClassified;
        }
        field(50108; PlanNumber; Text[100])
        {
            AllowInCustomizations = Always;
            Caption = 'Plan Number';
            DataClassification = ToBeClassified;
        }
        field(50109; CustodyChain; Boolean)
        {
            AllowInCustomizations = Always;
            Caption = 'Custody Chain';
            DataClassification = ToBeClassified;
        }


    }


}