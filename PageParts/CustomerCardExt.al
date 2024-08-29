pageextension 50100 CustomerCardExt extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
        addafter("Address & Contact")
        {
            group(SocialMediaInfo)
            {
                Caption = 'Social Media Information';
                field(LinkedIn;Rec.LinkedIn)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the StartDate field.', Comment = '%';
                }
                 field(Instagram;Rec.Instagram)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the StartDate field.', Comment = '%';
                }
            }
        }
        // addafter(Name)
        // {
        //     field(LinkedIn; Rec.LinkedIn)
        //     {
        //         ApplicationArea = All;
        //         ToolTip = 'Specifies the value of the StartDate field.', Comment = '%';
        //     }
        //     field(Instagram; Rec.Instagram)
        //     {
        //         ApplicationArea = All;
        //         ToolTip = 'Specifies the value of the StartDate field.', Comment = '%';
        //     }
        // }
        moveafter("E-Mail";Address)

        modify("Address 2")
        {
            // Visible= false;
           // Enabled = false;
            ShowMandatory = true;
        }


    }

    actions
    {
        // Add changes to page actions here
        addafter(SendApprovalRequest)
        {
            action(ACtion3)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Category14;
                
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }

    var
        myInt: Integer;
}