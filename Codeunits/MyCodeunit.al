codeunit 50109 MyCodeunit
{

    trigger OnRun()
    begin
        Message('test');

    end;

    var
        myInt: Integer;
        Customer: Record Customer;
        PostCU: Codeunit "Sales-Post";
}
