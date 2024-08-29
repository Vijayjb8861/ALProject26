namespace ALProject.ALProject;

page 50107 StudentCard
{
    ApplicationArea = All;
    Caption = 'StudentCard';
    PageType = Card;
    SourceTable = Student;
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                
                field(ID; Rec.ID)
                {
                    ToolTip = 'Specifies the value of the ID field.', Comment = '%';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.', Comment = '%';
                }
                field(PhoneNo; Rec.PhoneNo)
                {
                    ToolTip = 'Specifies the value of the PhoneNo field.', Comment = '%';
                }
                field(Physics; Rec.Physics)
                {
                    ToolTip = 'Specifies the value of the Physics field.', Comment = '%';
                }
                field(Chemistry; Rec.Chemistry)
                {
                    ToolTip = 'Specifies the value of the Chemistry field.', Comment = '%';
                }
                field(Biology; Rec.Biology)
                {
                    ToolTip = 'Specifies the value of the Biology field.', Comment = '%';
                }
            }
        }
    }
}
