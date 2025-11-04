pageextension 50100 ItemCategoryPageExt extends "Item Categories"
{
    layout
    {
        addbefore(Code)
        {
            field(Classification; Rec.Classification)
            {
                Caption = 'Classification';
                ApplicationArea = All;
            }
        }
    }
}