pageextension 50100 "VendorCardPageExtension" extends "Vendor Card"
{

    layout
    {
        addlast(General)
        {
            group("United Woods")
            {
                Caption = 'United Woods';

                field("Second Name"; Rec."Name 2")
                {
                    ApplicationArea = All;
                    Caption = 'Name 2';
                    ToolTip = 'Specifies the second name.';
                    TableRelation = Vendor;
                }

                field("Vendor Type Code"; Rec."Vendor Type Code")
                {
                    ApplicationArea = All;
                    Caption = 'Vendor Type Code';
                    ToolTip = 'Specifies the vendor type.';
                }

                field("Vendor Type Description"; Rec."Vendor Type Text")
                {
                    ApplicationArea = All;
                    Caption = 'Vendor Type Description';
                    Editable = false;
                    ToolTip = 'Specifies the vendor type description.';
                }

                field("SectorCode"; Rec."SectorCode")
                {
                    ApplicationArea = All;
                    Caption = 'Sector Code';
                    ToolTip = 'Specifies the sector.';
                }

                field("Sector Description"; Rec."SectorText")
                {
                    ApplicationArea = All;
                    Caption = 'Sector Description';
                    Editable = false;
                    ToolTip = 'Specifies the sector description.';
                }

                field("ActivityCode"; Rec."ActivityCode")
                {
                    ApplicationArea = All;
                    Caption = 'Activity Code';
                }

                field("Activity Description"; Rec."ActivityText")
                {
                    ApplicationArea = All;
                    Caption = 'Activity Description';
                    Editable = false;
                    ToolTip = 'Specifies the activity description.';
                }

                field("Chain of custody subject"; Rec."Chain of custody subject")
                {
                    ApplicationArea = All;
                    Caption = 'Chain of custody subject';
                    ToolTip = 'Specifies the chain of custody subject.';
                }

                field("Certification"; Rec."Certification")
                {
                    ApplicationArea = All;
                    Caption = 'Certification';
                    ToolTip = 'Specifies the certification.';
                }

                field("Approved"; Rec."Approved")
                {
                    ApplicationArea = All;
                    Caption = 'Approved';
                    ToolTip = 'Specifies if it is approved.';
                }

            }
        }
    }

    actions
    {
        addafter("F&unctions")
        {
            action("Vendor Types")
            {
                ApplicationArea = All;
                Caption = 'Vendor Types';
                Image = Category;
                ToolTip = 'Pressing this button will open the master table filtered by vendor.';
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;

                trigger OnAction()
                var
                    VMTPage: Record "Vendor Master Table";
                begin
                    VMTPage.SetFilter(Type, '%1', VMTPage.Type::Vendor);
                    Page.Run(Page::"Vendor Master Table Page", VMTPage);
                end;
            }

            action("Sector Types")
            {
                ApplicationArea = All;
                Caption = 'Sector Types';
                Image = Category;
                ToolTip = 'Pressing this button will open the master table filtered by sector.';
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;

                trigger OnAction()
                var
                    VMTPage: Record "Vendor Master Table";
                begin
                    VMTPage.SetFilter(Type, '%1', VMTPage.Type::Sector);
                    Page.Run(Page::"Vendor Master Table Page", VMTPage);
                end;
            }

            action("Activity Types")
            {
                ApplicationArea = All;
                Caption = 'Activity Types';
                Image = Category;
                ToolTip = 'Pressing this button will open the master table filtered by activity.';
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;

                trigger OnAction()
                var
                    VMTPage: Record "Vendor Master Table";
                begin
                    VMTPage.SetFilter(Type, '%1', VMTPage.Type::Activity);
                    Page.Run(Page::"Vendor Master Table Page", VMTPage);
                end;
            }
        }
    }

}