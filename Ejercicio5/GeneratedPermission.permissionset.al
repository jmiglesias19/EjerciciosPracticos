namespace Permissions;

permissionset 50100 GeneratedPermission
{
    Caption = 'Generated Permission Set', MaxLength = 30;
    Assignable = true;
    Permissions = tabledata VendorCertificatesHeader = RIMD,
        tabledata VendorCertificatesLines = RIMD,
        table VendorCertificatesHeader = X,
        table VendorCertificatesLines = X,
        page VendorCertificateDocument = X,
        page VendorCertificateListPart = X,
        page VendorCertificatesList = X;
}