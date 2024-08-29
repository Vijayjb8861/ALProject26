page 50110 NoOfPurchaseOrders
{
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Purchase Header";
    
    layout
    {
        area(Content)
        {
            cuegroup(GroupName)
            {
                field(NoofOrders;Rec.NoofOrders)
                {
                    ApplicationArea = All;
                    DrillDownPageId = "Purchase Order List";
                
                }
            }
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
    
    var
        myInt: Integer;
}


tableextension 50105 MyExtension extends "Purchase Header"
{
    fields
    {
        // Add changes to table fields here
        field(50104; NoofOrders; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Purchase Header" where("Document Type" = const(Order)));
        
        }
    }
    
    keys
    {
        // Add changes to keys here
    }
    
    fieldgroups
    {
        // Add changes to field groups here
    }
    
    var
        myInt: Integer;
}