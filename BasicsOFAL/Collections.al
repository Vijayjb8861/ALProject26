//3 types - 1. Array 2.List 3. Dictionary

page 50111 "Collections"
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
        myarray: array[5] of Integer;
        length: Integer;      //array index in AL starts from 1 
        mylist: List of [text];
        list2: List of [text];
        countrynames: List of [Text];
        capitals: List of [text];
        item: text;
        mydictionary: Dictionary of [Text, Text];
        count, total : Integer;
       
    begin
        myarray[1] := 5;
        myarray[2] := 10;
        myarray[3] := 15;
        myarray[4] := 20;
        myarray[5] := 25;
        count := 1;
        // length := ArrayLen(myarray);

        //  Message('the 4th element is %1',myarray[4]);

        // list2.Add('AB');
        // list2.Add('XY');


        // //list-methods

        // mylist.Add('vijay');
        // mylist.Add('richard');
        // mylist.Add('arun');
        // mylist.Add('ted');
        // mylist.Add('justin');

        // mylist.AddRange(list2);


        // //    mylist.Insert(2,'john');

        // mylist.Set(2, 'jacob');
        // Message('%1', mylist.Get(3));


        mydictionary.Add('INDIA', 'Delhi');
        mydictionary.Add('Australia', 'Canberra');
        mydictionary.Add('USA', 'Washington DC');
        mydictionary.Add('Sri Lanka', 'Colombus');

        //  Message('%1', mydictionary.ContainsKey('USA'));

        countrynames := mydictionary.Keys;         //returns list of keys
        capitals := mydictionary.Values;           //returns list of values

        // foreach item in countrynames do begin
        //     Message(item);
        // end;

        // foreach item in capitals do begin
        //     Message(item);
        // end;

        //loops
        // for count:=1 to 5 do begin     //FOR-TO-DO
        //     total := total + 5;
        //     Message('%1',total);
        // end;

        // for count:=5 downto 1 do begin    //for-downto-do
        //     total := total + 5;
        //     Message('%1',count);
        // end;

        // addition();

        // addition2(50,100);
        

        // while count < 6 do begin
        //     total := total + 5;
        //     Message('%1', count);
        //     count := count + 1;
        // end;
        // Message('the total is %1', total);
       

    end;


      procedure addition()               //function or procedures  //type1
    var
        num1, num2, sum : Integer;
    begin
        num1 := 20;
        num2 := 30;
        sum := num1 + num2;
        Message('the total is %1', sum);
    end;

    procedure addition2(num1: Integer; num2: Integer)
    var
        sum: Integer;
    begin
        sum := num1 + num2;
        Message('the total is %1', sum);
    end;

    var
        globalvar: Integer;             //global variable
        pagevar: Page "Customer Card";   //complex data types
}


