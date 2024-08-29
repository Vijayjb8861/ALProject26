report 50107 ProcessOnlyReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    ProcessingOnly = true;
    
    // DefaultRenderingLayout = LayoutName;
    
    dataset
    {
        dataitem(Item;Item)
        {
            // column(ColumnName; SourceFieldName)
            // {
                
            // }

            trigger OnAfterGetRecord()
            var
                myInt: Integer;
            begin
                // if Customer.Name = 'John' then
                // begin
                //     Customer.Contact := 'ABC XYZ';
                //     Customer.Address := 'Street 3';  
                //     Customer.Modify();
                // end;

                if Item."No." = '1000' then
                begin
                    Item.Description := 'Pencils';
                    Item.Modify();
                end;

                Item."Unit Cost" := Item."Unit Cost" + 10.00;
                item.Modify();


              
            end;
        }
    }
    
    requestpage
    {
        AboutTitle = 'Teaching tip title';
        AboutText = 'Teaching tip content';
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    // field(Name; SourceExpression)
                    // {
                    //     ApplicationArea = All;
                        
                    // }
                }
            }
        }
    
        actions
        {
            area(processing)
            {
                action(LayoutName)
                {
                    ApplicationArea = All;
                    
                }
            }
        }
    }
    
   
    
    var
        myInt: Integer;
}