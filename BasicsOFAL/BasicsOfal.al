page 50109 "Basics of AL"
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

    trigger OnOpenPage()
    var
        mysum: Integer;            //local variable
        myfavcolor : Enum Color;
        codeunitvar : Codeunit MyCodeunit1;
        CustomerArray : array[3] of Record Customer;
        CustomerRec :Record Customer;
        I : Integer;
        CustomerNames : Text;
    begin
        globalvar := 10;
        myfavcolor := Color::Blue;
        // Message('%1',myfavcolor);
       // codeunitvar.Run();
        //codeunitvar.addition();
        //codeunitvar.addition2(40,100);

        mysum := codeunitvar.addition3();
        Message('the sum is %1',mysum);

        //initilizing

        if CustomerRec.FindSet() then begin
            I := 1;
            repeat
                CustomerArray[I].Copy(CustomerRec);           //copy the current customer record to the array
                I := I + 1;
            until (CustomerRec.Next() = 0) or (I > ArrayLen(CustomerArray));
        end;

        CustomerNames := '';
        for I := 1 to ArrayLen(CustomerArray) do begin
            if not CustomerArray[I].IsEmpty then
            CustomerNames := CustomerNames + CustomerArray[I].Name + '\';
        end;

        Message('Customer Names : %1', CustomerNames);



    end;

    


    var 
        globalvar : Integer;             //global variable
        pagevar : Page "Customer Card";   //complex data types
}


enum 50100 Color
{
    Extensible = true;
    
    value(0; Green)
    {
       
    }
     value(1; Red)
    {
    }
     value(2; Blue)
    {
    }
}

// enumextension 50101 ColorExt extends Color
// {
//     value(3; Black)
//     {
//     }
// }