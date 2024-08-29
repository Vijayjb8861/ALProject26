namespace ALProject.ALProject;

page 50102 InstructorList
{
    ApplicationArea = All;
    Caption = 'InstructorList';
    PageType = List;
    SourceTable = InstructorDetails;
    UsageCategory = Lists;
    CardPageId = InstructorCard;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
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
    }
}
