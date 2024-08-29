report 50100 "Customer Report"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = Word;
    WordLayout = 'Customer Report.docx';
   // DefaultRenderingLayout = LayoutName;
    
    dataset
    {
        dataitem(Customer;Customer)
        {
            column(No_;"No.")
            {
                
            }
             column(Name;Name)
            {
                
            }
            column(Balance__LCY_;"Balance (LCY)")
            {
                
            }
            column(E_Mail;"E-Mail")
            {
                
            }
            column(Contact;Contact)
            {
                
            }
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
    
    // rendering
    // {
    //     layout(LayoutName)
    //     {
    //         Type = Excel;
    //         LayoutFile = 'mySpreadsheet.xlsx';
    //     }
    // }
    
    var
        myInt: Integer;
}