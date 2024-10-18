codeunit 50109 MyCodeunit
{

    trigger OnRun()
    begin
        //customer.GetBalanceAsVendor()
        //Customer.
        Message('test');

    end;

    var
        myInt: Integer;
        Customer: Record Customer;
        PostCU: Codeunit "Sales-Post";
}
