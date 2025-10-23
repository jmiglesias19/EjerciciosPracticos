page 50100 "Vendor Master Table Page"
{
    PageType = List;
    Caption = 'Vendor Master Table Page';
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Vendor Master Table";

    layout
    {
        area(Content)
        {
            repeater("Maderas Unidas")
            {
                Caption = 'Maderas Unidas';

                field(Type; Rec.Type)
                {
                    Caption = 'Type';
                }

                field(Code; Rec.Code)
                {
                    Caption = 'Code';

                }

                field(Description; Rec.Description)
                {
                    Caption = 'Description';
                }

                field(Sector; Rec.Sector)
                {
                    Caption = 'Sector';
                }

                field(Activity; Rec.Activity)
                {
                    Caption = 'Activity';
                }


            }
        }
    }


}