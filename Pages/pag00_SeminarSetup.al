page 50100 "CSD Seminar Setup"
{
    PageType = Card;
    SourceTable = "CSD Seminar Setup";
    Caption = 'Seminar Setup';
    InsertAllowed = false;
    DeleteAllowed = false;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group(Numbering)
            {
                field("Seminar Nos."; rec."Seminar Nos.")
                {
                    ApplicationArea = all;
                }
                field("Seminar Registration Nos."; Rec."Seminar Registration Nos.")
                {
                    ApplicationArea = All;
                }
                field("Posted Seminar Reg. Nos."; Rec."Posted Seminar Reg. Nos.")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }
    trigger OnOpenPage()

    begin
        if not Rec.Get() then begin
            Rec.Init;
            Rec.Insert;
        end;
    end;

    var
        myInt: Integer;
}