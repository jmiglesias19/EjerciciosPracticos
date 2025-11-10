namespace Permissions;

permissionset 50100 GeneratedPermission
{
    Caption = 'Generated Permissions', MaxLength = 30;
    Assignable = true;
    Permissions = tabledata VendorEvaluationHeader = RIMD,
        tabledata VendorEvaluationLines = RIMD,
        tabledata EvaluationCriteria = RIMD,
        table VendorEvaluationHeader = X,
        table VendorEvaluationLines = X,
        table EvaluationCriteria = X,
        page VendorEvaluationCardDocument = X,
        page VendorEvaluationList = X,
        page VendorEvaluationListSubform = X,
        page VendorEvaluationsArchived = X,
        page EvaluationCriteriaList = X;
}