namespace Permissions;

permissionset 50100 GeneratedPermission
{
    Caption = 'Generated Permissions', MaxLength = 30;
    Assignable = true;
    Permissions = tabledata VendorEvaluationHeader = RIMD,
        tabledata VendorEvaluationLines = RIMD,
        table VendorEvaluationHeader = X,
        table VendorEvaluationLines = X,
        page VendorEvaluationCardDocument = X,
        page VendorEvaluationList = X,
        page VendorEvaluationListSubform = X,
        page VendorEvaluationsArchived = X;
}