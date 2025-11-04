page 50101 SectorList
{
    Caption = 'Sector List';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = CustomerSector;
    // Extensible = true;

    layout
    {
        area(Content)
        {
            repeater(SectorGroup)
            {
                Caption = 'Sector Group';
                field(CustomerSector; Rec.Sector)
                {
                    Caption = 'Sector';
                }

                field(CustomerDescription; Rec.SectorDescription)
                {
                    Caption = 'Description';
                }
            }
        }
    }
}