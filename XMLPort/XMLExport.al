xmlport 50100 MyXmlport1
{
    Direction = Export;
    Format = FixedText;
    TextEncoding = UTF8;



    schema
    {
        textelement(CourseList)
        {
            tableelement(CourseTable;"Course Table")
            {
                RequestFilterFields = CourseID,CourseName;
                fieldelement(CourseID;CourseTable.CourseID)
                {
                    Width = 10;
                }
                fieldelement(CourseName;CourseTable.CourseName)
                {
                     Width = 30;
                }
                 fieldelement(Email;CourseTable.Email)
                {
                     Width = 30;
                }
                
            }
        }
    }
    
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                    // field(Name; SourceExpression)
                    // {
                        
                    // }
                }
            }
        }
    
        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    
                }
            }
        }
    }
    
    var
        myInt: Integer;
}