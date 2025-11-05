// codeunit 50100 Subscribers
// {
//     [EventSubscriber(ObjectType::Table, Database::Item, "OnAfterValidateEvent", "CustodyChain", false, false)]
//     local procedure CheckQualityOnCustodyChain(var Rec: Record Item)
//     begin
//         if Rec.CustodyChain then
//             Rec.TestField(Quality);
//     end;
// }