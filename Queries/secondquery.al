query 50101 MyQuery2 
{
    QueryType = Normal;
    
    elements
    {
        dataitem(Customer;Customer)
        {
            column(No_;"No.")
            {
                
            }
             column(Name;Name)
            {
                
            }

            // filter(FilterName; SourceFieldName)
            // {
                
            // }
                dataitem(Sales_Line;"Sales Line")
                {
                    DataItemLink = "Sell-to Customer No." = Customer."No.";
                    SqlJoinType = InnerJoin;
                    column(Quantity;Quantity)
                    {
                        Method = Sum;

                    }
                }
        }
        
    }
    
    var
        myInt: Integer;
    
    trigger OnBeforeOpen()
    begin
       // CurrQuery.TopNumberOfRows := 3;
        // CurrQuery.
    end;
}