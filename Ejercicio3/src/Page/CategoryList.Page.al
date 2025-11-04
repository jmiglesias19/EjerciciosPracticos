page 50103 CategoryList
{
    Caption = 'Category List';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = CustomerCategory;

    layout
    {
        area(Content)
        {
            repeater(CategoryGroup)
            {
                Caption = 'Category Group';
                field(CustomerCategory; Rec.Category)
                {
                    Caption = 'Category';
                }

                field(CategoryDescription; Rec.CategoryDescription)
                {
                    Caption = 'Description';
                }
            }
        }
    }
}