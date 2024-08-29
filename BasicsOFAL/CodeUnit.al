codeunit 50100 MyCodeunit1                  //containing of codes
{
    trigger OnRun()
    begin
        Message('on run trigger of mycodeunit1 is called');
    end;

  

    procedure addition3():Integer
    var
        num1,num2,sum: Integer;
    begin
        sum := num1 + num2;
        // Message('the total is %1', sum);
        exit(sum)
    end;



    var
        myInt: Integer;
}