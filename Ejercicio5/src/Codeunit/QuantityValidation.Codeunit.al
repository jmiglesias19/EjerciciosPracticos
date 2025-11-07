codeunit 50100 QuantityValidation
{

    Permissions = tabledata Vendor = r,
                  tabledata "Purchase Header" = r,
                  tabledata VendorCertificatesHeader = r;

    [EventSubscriber(ObjectType::Table, Database::"Purchase Line", OnAfterValidateEvent, Quantity, false, false)]
    local procedure ValidateQtityAndType(var Rec: Record "Purchase Line"; var xRec: Record "Purchase Line")
    var
        VendorRec: Record Vendor;
        PurchaseHeaderRec: Record "Purchase Header";
        VendorCertificate: Record VendorCertificatesHeader;
    begin
        if not PurchaseHeaderRec.Get(Rec."Document Type", Rec."Document No.") then
            exit;
        if not VendorRec.Get(PurchaseHeaderRec."Buy-from Vendor No.") then
            exit;

        if VendorRec.Approved then begin

            VendorCertificate.SetRange(VendorCode, VendorRec."No.");
            VendorCertificate.SetRange(Active, true);

            if VendorCertificate.FindFirst() then
                if (Rec.Type = Rec.Type::Item) and
                   (VendorCertificate.ExpirationDate < PurchaseHeaderRec."Posting Date")
                then
                    Message('Approved vendor certificate is expired.');
        end;
    end;
}