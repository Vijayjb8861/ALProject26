table 50104 Student
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;ID; code[20])
        {
            DataClassification = ToBeClassified;
            
        }
        field(2; Name; text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(3; PhoneNo; Text[10])
        {
            DataClassification = ToBeClassified;
        }
        field(4; Physics; Integer)
        {
            DataClassification = ToBeClassified;

            trigger OnValidate()
            var
                myInt: Integer;
            begin
                if  Rec.Physics > 100 then
                Error('Maximum Marks in 100. Enter valid marks');
            end;
        }
        field(5; Chemistry; Integer)
        {
            DataClassification = ToBeClassified;
             trigger OnValidate()
            var
                myInt: Integer;
            begin
                if  Rec.Chemistry > 100 then
                Error('Maximum Marks in 100. Enter valid marks');
            end;
        }
        field(6; Biology; Integer)
        {
            DataClassification = ToBeClassified;

             trigger OnValidate()
            var
                myInt: Integer;
            begin
                if  Rec.Biology > 100 then
                Error('Maximum Marks in 100. Enter valid marks');
            end;
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
    var 
       studentrankvar : Record StudentRank; 
    begin
        studentrankvar.ID := Rec.ID;
        studentrankvar.Insert();
    end;
    
    trigger OnModify()                 //since it gets called after each field is modified
    var 
        studentrankvar : Record StudentRank; 
    begin
        studentrankvar.Get(Rec.ID);
        studentrankvar.Name := Rec.Name;
        studentrankvar.Total := Rec.Physics + Rec.Chemistry + Rec.Biology;
        studentrankvar.Modify();
    end;
    
    trigger OnDelete()
    var 
        studentrankvar : Record StudentRank; 
    begin
        studentrankvar.Get(Rec.ID);
        studentrankvar.Delete();
        Commit();
    end;
    
    trigger OnRename()            //when the primary key is changed
    var 
        studentrankvar : Record StudentRank;
    begin
        Message('the new id is %1',Rec.ID);
        Message('the old USN is %1',xRec.ID);

        studentrankvar.Get(xRec.ID);
        studentrankvar.Rename(Rec.ID);
        Commit();
    end;
    
}