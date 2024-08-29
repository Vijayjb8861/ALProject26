page 50105 CourseCardPart
{
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Course Table";
    
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Image;Rec.Image)
                {
                    ApplicationArea = All;
                    
                }
                 field(CourseName;Rec.CourseName)
                {
                    ApplicationArea = All;
                    
                }
                 field(CourseID;Rec.CourseID)
                {
                    ApplicationArea = All;
                    
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