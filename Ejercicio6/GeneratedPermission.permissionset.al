namespace Permissions;

permissionset 50100 GeneratedPermission
{
    Caption = 'Generated Permission', MaxLength = 30;
    Assignable = true;
    Permissions = tabledata VendorEvaluationHeader = RIMD,
        tabledata VendorEvaluationLines = RIMD,
        tabledata EvaluationCriterion = RIMD,
        table VendorEvaluationHeader = X,
        table VendorEvaluationLines = X,
        table EvaluationCriterion = X,
        page VendorEvaluationCard = X,
        page VendorEvaluationList = X;
}