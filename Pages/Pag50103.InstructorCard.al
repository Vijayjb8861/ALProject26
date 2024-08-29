namespace ALProject.ALProject;

page 50103 InstructorCard
{
    ApplicationArea = All;
    Caption = 'InstructorCard';
    PageType = Card;
    SourceTable = InstructorDetails;
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                
                field(InstructorID; Rec.InstructorID)
                {
                    ToolTip = 'Specifies the value of the InstructorID field.', Comment = '%';
                }
                field(InstructorName; Rec.InstructorName)
                {
                    ToolTip = 'Specifies the value of the InstructorName field.', Comment = '%';
                }
                field(Email; Rec.Email)
                {
                    ToolTip = 'Specifies the value of the Email field.', Comment = '%';
                }
                field(PhoneNo; Rec.PhoneNo)
                {
                    ToolTip = 'Specifies the value of the PhoneNo field.', Comment = '%';
                }
            }
        }
        area(FactBoxes)
        {
            part(CourseList; CourseListPart)
            {
                ApplicationArea = All;
                
            }
        }
    }
}
