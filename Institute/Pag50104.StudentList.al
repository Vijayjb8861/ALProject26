namespace ALProject.ALProject;

page 50104 StudentList
{
    ApplicationArea = All;
    Caption = 'StudentList';
    PageType = List;
    SourceTable = Student;
    UsageCategory = Lists;
    CardPageId = StudentCard;
    Editable = false;


    layout
    {
        area(Content)
        {
            repeater(General)
            {
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
    actions
    {
        area(Processing)
        {
            action(StudentRank)
            {
                ApplicationArea = All;
                Caption = 'Student Rank';
                Image = StatisticsDocument;
                RunObject = page RankList;

                trigger OnAction()
                begin

                end;
            }
        }
    }
}
