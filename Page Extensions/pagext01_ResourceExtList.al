pageextension 50101 "CSD ResourceListExt" extends "Resource List"
{
    layout
    {
        modify(Type)
        {
            Visible = ShowType;
        }
        addafter(Type)
        {
            field("CSD Resource Type"; Rec."CSD Resource Type")
            {
                ApplicationArea = All;
            }
            field("CSD Maximum Participants"; Rec."CSD Maximum Participants")
            {
                ApplicationArea = All;
                Visible = ShowMaxField;

            }
        }

    }


    trigger OnOpenPage()
    begin
        ShowType := (rec.GetFilter(Type) = '');
        ShowMaxField := (rec.GetFilter(Type) = format(rec.Type::machine));
    end;

    var
        ShowMaxField: Boolean;
        Showtype: Boolean;
}