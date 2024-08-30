query 50102 CourseAPIData
{
    QueryType = API;
    APIPublisher = 'Vijay';
    APIGroup = 'VijayJB';
    APIVersion = 'v1.0';
    EntityName = 'Course';
    EntitySetName = 'Courses';
    
    elements
    {
        dataitem(Course_Table;"Course Table")
        {
            column(CourseID;CourseID)
            {
                
            }
             column(CourseName;CourseName)
            {
                
            }
              column(CourseDuration;CourseDuration)
            {
                
            }
              column(InstructorID;InstructorID)
            {
                
            }
            // filter(FilterName; SourceFieldName)
            // {
                
            // }
        }
    }
    
    var
        myInt: Integer;
    
    trigger OnBeforeOpen()
    begin
        
    end;
}
