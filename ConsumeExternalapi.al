page 50112 "ConsumingAPI"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    // SourceTable = TableName;
    
    layout
    {
        area(Content)
        {
            // repeater(GroupName)
            // {
            //     field(Name; NameSource)
            //     {
            //         ApplicationArea = All;
                    
            //     }
            // }
        }
        area(Factboxes)
        {
            
        }
    }
    
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;
                
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }

    

   
}





table 50117 "Users From API"
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;SLNo; Integer)
        {
            DataClassification = ToBeClassified;
            
        }
        field(2; Name; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(3; phone; Text[50])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = PhoneNo;
        }
        field(4; email; text[60])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = EMail;
        }
        field(5; Website; Text[150])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = URL;
        }
        field(6; WebID; Integer)
        {
            DataClassification = ToBeClassified;
        }
    }
    
    keys
    {
        key(pk; SLNo)
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