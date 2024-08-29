pageextension 50105 CustomerListExt extends "Customer List"
{
    layout
    {
        // Add changes to page layout here
    }
    
    actions
    {
        // Add changes to page actions here
        addafter(ApprovalEntries)
        {
            action(CustomerSales)
            {
                ApplicationArea = All;
                Caption = 'Customer Sales by Quantity';
                Image = Document;
                RunObject = query 50101;
                Promoted = true;
                PromotedCategory = Category16;
                
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }
    
    var
        myInt: Integer;
}