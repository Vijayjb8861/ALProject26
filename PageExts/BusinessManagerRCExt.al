pageextension 50104 BMRoleCentreExt extends "Business Manager Role Center"
{
    layout
    {
        // Add changes to page layout here
        addafter(ApprovalsActivities)
        {
            part(Accountantact; "Accountant Activities")
            {
                ApplicationArea = All;
                
            }
            part(NoofOrders; NoOfPurchaseOrders)
            {
                ApplicationArea = All;
                
            }
        }
    }
    
    actions
    {
        // Add changes to page actions here
    }
    
    var
        myInt: Integer;
}