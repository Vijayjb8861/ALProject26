page 50106 CourseListPart
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Course Table";
    
    
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
               field(CourseID; Rec.CourseID)
                {
                    ToolTip = 'Specifies the value of the CourseID field.', Comment = '%';
                }
                field(CourseName; Rec.CourseName)
                {
                    ToolTip = 'Specifies the value of the CourseName field.', Comment = '%';
                }
                field(CourseType; Rec.CourseType)
                {
                    ToolTip = 'Specifies the value of the CourseType field.', Comment = '%';
                }
                field(CourseDuration; Rec.CourseDuration)
                {
                    ToolTip = 'Specifies the value of the CourseDuration field.', Comment = '%';
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
}