namespace ALProject.ALProject;
using Microsoft.Finance.RoleCenters;

page 50100 CourseList
{
    ApplicationArea = All;
    Caption = 'Course List';
    PageType = List;
    SourceTable = "Course Table";
    // SourceTableView = where(CourseType = const(Online));
    UsageCategory = Lists;
    CardPageId = CourseCard;
    Editable = false;
    // InsertAllowed = false;
    // DeleteAllowed = false;
    // ModifyAllowed = false;
    
    layout
    {
        area(Content)
        {
            repeater(General)
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
                field(StartDate; Rec.StartDate)
                {
                    ToolTip = 'Specifies the value of the StartDate field.', Comment = '%';
                }
                field(Active; Rec.Active)
                {
                    ToolTip = 'Specifies the value of the Active field.', Comment = '%';
                }
                field(InstructorID; Rec.InstructorID)
                {
                    ToolTip = 'Specifies the value of the InstructorID field.', Comment = '%';
                }
                 field(InstuctorName;Rec.InstuctorName)
                {
                    ToolTip = 'Specifies the value of the StartDate field.', Comment = '%';
                }
                field(Price; Rec.Price)
                {
                    ToolTip = 'Specifies the value of the Price field.', Comment = '%';
                }
                  field(URL;Rec.URL)
                {
                    ToolTip = 'Specifies the value of the StartDate field.', Comment = '%';
                }
                  field(Email;Rec.Email)
                {
                    ToolTip = 'Specifies the value of the StartDate field.', Comment = '%';
                }
                 field(PhoneNum;Rec.PhoneNum)
                {
                    ToolTip = 'Specifies the value of the StartDate field.', Comment = '%';
                }
                 field(AvgPrice;Rec.AvgPrice)
                {
                    ToolTip = 'Specifies the value of the StartDate field.', Comment = '%';
                }
                
            }
        }
        area(FactBoxes)    
        {
           part(mypart1; "Acc. Payables Activities")
           {
            ApplicationArea = All;
            
           }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ExportinXML)
            {
                ApplicationArea = All;
                Caption = 'Export Data in XML';
                Image = ExportFile;
                RunObject = xmlport MyXmlport1;
                
                trigger OnAction()
                begin
                    
                end;
            }
            action(Import)
            {
                ApplicationArea = All;
                Caption = 'Import Data in XML';
                Image = Import;
                // RunObject = xmlport MyXmlImport;
                
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }
}
