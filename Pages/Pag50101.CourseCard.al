namespace ALProject.ALProject;
using Microsoft.Sales.Customer;

page 50101 CourseCard
{
    ApplicationArea = All;
    Caption = 'CourseCard';
    PageType = Card;
    SourceTable = "Course Table";
    PromotedActionCategories = ',,,Customers';

    layout
    {

        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field(CourseID; Rec.CourseID)
                {
                    ToolTip = 'Specifies the value of the CourseID field.', Comment = '%';
                    Importance = Promoted;
                }
                field(CourseName; Rec.CourseName)
                {
                    ToolTip = 'Specifies the value of the CourseName field.', Comment = '%';
                    ShowMandatory = true;
                    NotBlank = true;
                    Importance = Promoted;
                }
                field(CourseType; Rec.CourseType)
                {
                    ToolTip = 'Specifies the value of the CourseType field.', Comment = '%';
                    Importance = Standard;
                }
                field(CourseDuration; Rec.CourseDuration)
                {
                    ToolTip = 'Specifies the value of the CourseDuration field.', Comment = '%';
                    ShowMandatory = true;
                }
                field(InstructorID; Rec.InstructorID)
                {
                    ToolTip = 'Specifies the value of the InstructorID field.', Comment = '%';
                }
                field(Active; Rec.Active)
                {
                    ToolTip = 'Specifies the value of the Active field.', Comment = '%';
                    Importance = Additional;
                }
                field(Price; Rec.Price)
                {
                    ToolTip = 'Specifies the value of the Price field.', Comment = '%';
                    Importance = Additional;
                }
                field(StartDate; Rec.StartDate)
                {
                    ToolTip = 'Specifies the value of the StartDate field.', Comment = '%';
                }
                // field(Image;Rec.Image)
                // {
                //     ToolTip = 'Specifies the value of the StartDate field.', Comment = '%';
                // }

            }
            group(Communication)
            {
                field(PhoneNum; Rec.PhoneNum)
                {
                    ToolTip = 'Specifies the value of the StartDate field.', Comment = '%';
                }
                field(URL; Rec.URL)
                {
                    ToolTip = 'Specifies the value of the StartDate field.', Comment = '%';
                }
                field(Email; Rec.Email)
                {
                    ToolTip = 'Specifies the value of the StartDate field.', Comment = '%';

                    trigger OnValidate()         //when data is entered
                    var
                        myInt: Integer;
                    begin
                       if not Rec.Email.Contains('@gmail.com') then 
                       begin
                        Error('Enter a Valid Email address containing @gmail.com');
                       end;
                    end;
                }
            }
        }
        area(FactBoxes)
        {
            part(CourseCardpart; CourseCardPart)
            {
                ApplicationArea = All;
                SubPageLink = CourseID = field(CourseID);

            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(CustomerList)
            {
                ApplicationArea = All;
                Caption = 'Customer List';
                Image = CustomerList;
                RunObject = page "Customer List";
                Promoted = true;
                PromotedCategory = Category4;


                trigger OnAction()
                begin
                    Message('Hi Richard');
                end;
            }
        }
        // area(Creation)
        // {
            
        // }
        area(Reporting)
        {
            group(Group1)
            {
                action(Action2)
                {
                    ApplicationArea = All;

                    trigger OnAction()
                    begin

                    end;
                }
                 action(Action56)
                {
                    ApplicationArea = All;

                    trigger OnAction()
                    begin

                    end;
                }
            }
        }
        area(Navigation)
        {
            action(Action4)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

}


