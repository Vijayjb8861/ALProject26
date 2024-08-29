table 50101 InstructorDetails
{
    DataClassification = ToBeClassified;
    Caption = 'Instructor Information';
    LookupPageId = InstructorList;
    
    
    fields
    {
        field(1;InstructorID; Code[20])
        {
            DataClassification = ToBeClassified;
            
        }
        field(2;InstructorName; Text[60])
        {
            DataClassification = ToBeClassified;
        }
        field(3; Email; Text[50])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = EMail;
        }
        field(4; PhoneNo; Text[10])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = PhoneNo;
        }
       
    }
    
    keys
    {
        key(pk; InstructorID)
        {
            Clustered = true;
        }
    }
    
    fieldgroups
    {
        // Add changes to field groups here
        fieldgroup(DropDown;InstructorID,InstructorName,Email){}
        
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