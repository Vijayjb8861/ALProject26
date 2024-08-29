xmlport 50101 MyXmlExport
{
    Direction = Import;
    Format = XML;
    

    schema
    {
        textelement(CourseList)
        {
            tableelement(CourseTable;"Course Table")
            {
                fieldattribute(CourseID;CourseTable.CourseID)
                {
                    
                }
                fieldelement(CourseName;CourseTable.CourseName)
                {

                }
                 fieldelement(Email;CourseTable.Email)
                {
                    
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