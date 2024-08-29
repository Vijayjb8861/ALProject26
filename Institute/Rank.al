table 50105 StudentRank
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;ID; code[20])
        {
            DataClassification = ToBeClassified;
            
        }
        field(2; Name; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(3; Total; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(4; Rank; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(5; Color; Enum Color)
        {
            DataClassification = ToBeClassified;
        }
    }
    
    keys
    {
        key(pk; ID)
        {
            Clustered = true;
        }
    }
    
    fieldgroups
    {
        // Add changes to field groups here
    }
    
    var
        myInt: Integer;
    
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