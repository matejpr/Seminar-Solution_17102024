table 50100 "CSD Seminar Setup"
{
    Caption = 'Seminar';
    DataClassification = ToBeClassified;

    fields
    {
        field(10; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
            DataClassification = AccountData;

        }
        field(20; "Seminar Nos."; Code[20])
        {
            Caption = 'Primary Key';
            DataClassification = AccountData;

        }
        field(30; "Seminar Registration Nos."; code[20])
        {
            Caption = 'Primary Key';
            DataClassification = AccountData;

        }
        field(40; "Posted Seminar Reg. Nos."; code[20])
        {
            Caption = 'Primary Key';
            DataClassification = AccountData;

        }
    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }


    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}