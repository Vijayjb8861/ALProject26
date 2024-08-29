query 50100 "Customer Sales"
{
    QueryType = Normal;
    
    elements
    {
        dataitem(Cust_Ledger_Entry;"Cust. Ledger Entry")
        {
           // DataItemTableFilter = "Sales (LCY)" = filter(>3000);
            column(Customer_No_;"Customer No.")
            {
                
            }
             column(Customer_Name;"Customer Name")
            {
                
            }
            column(Sales__LCY_;"Sales (LCY)")
            {
                
            }
          
            // filter(Sales__LCY_;"Sales (LCY)")     //not part of part of dataset
            // {
                
            // }
        }
    }
    
    var
        myInt,myint2: Integer;
    
    trigger OnBeforeOpen()
    begin
        SetFilter(Sales__LCY_,'>10000');
        // SetRange();
    end;
}