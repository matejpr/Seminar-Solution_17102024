// CSD1.00 - 2024-10-17 - Matej
pageextension 50100 "CSD ResourceCardExt" extends "Resource Card"
{
    layout
    {
        addlast(General)
        {
            field("CSD Resource Type"; Rec."CSD Resource Type")
            {
                ApplicationArea = all;
                trigger OnValidate();
                begin

                end;
            }
            field("CSD Maximum Participants"; Rec."CSD Maximum Participants")
            {
                ApplicationArea = all;
            }

        }
        addafter("Personal Data")
        {
            group("CSD Room")
            {
                Caption = 'Room';
                Visible = ShowRoom;
                field("CSD Quantity Per Day"; Rec."CSD Quantity Per Day")
                {
                    ApplicationArea = all;
                }

            }
        }

    }
    trigger OnOpenPage()
    begin


    end;

    trigger OnAfterGetRecord()
    begin
        ShowRoom := rec.Type = rec.Type::Machine;
        CurrPage.Update(false);
    end;

    var
        ShowRoom: Boolean;
}