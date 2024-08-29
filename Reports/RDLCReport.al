report 50103 ItemReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    // DefaultLayout = RDLC;
    // RDLCLayout = 'Item Report.RDLC';
    DefaultRenderingLayout = ExcelLayout;
    
    dataset
    {
        dataitem(Item;Item)
        {
            column(No_;"No.")
            {
                
            }
            column(Description; Description)
            {
                
            }
            column(Item_Category_Code;"Item Category Code")
            {
                
            }
            column(Unit_Cost;"Unit Cost")
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
    
    rendering
    {
        layout(WordLayout)
        {
            Type = Word;
            LayoutFile = 'mySpreadsheet.docx';
        }
        layout(ExcelLayout)
        {
            Type = Excel;
            LayoutFile = 'mySpreadsheet.xlsx';
        }
        layout(RDLClayout)
        {
            Type = RDLC;
            LayoutFile = 'mySpreadsheet.rdlc';
        }
        layout(Wordlayout2)
        {
            Type = Word;
            LayoutFile = 'mySpreadsheet2.docx';
        }
    }
    
    var
        myInt: Integer;
}