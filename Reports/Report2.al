report 50105 MyReport3
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    ExcelLayout = 'Customer Report3.xlsx';
    DefaultLayout = Excel;
    // DefaultRenderingLayout = LayoutName;

    dataset
    {
        dataitem(Customer; Customer)
        {
            RequestFilterFields = "No.", Name;
            column(No_; "No.")
            {

            }
            column(Name; Name)
            {

            }



            dataitem("Sales Line"; "Sales Line")
            {
                DataItemLink = "Sell-to Customer No." = field("No.");

                column(Quantity; Quantity)
                {

                }

                // trigger OnPreDataItem()
                // var
                //     myInt: Integer;
                // begin
                //     Message('we are on the 2nd predata item trigger');
                // end;

            }

            trigger OnPreDataItem()
            var
                myInt: Integer;
            begin
                Message('we are on the 1st predata item trigger');
                Message(Customer.Name);
            end;

            trigger OnAfterGetRecord()
            var
                myInt: Integer;
            begin
                Message('we are on the aftergetrecord');
                Message(Customer.Name);
            end;
        }
    }

    requestpage
    {
        AboutTitle = 'Teaching tip title';
        AboutText = 'Teaching tip content';
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    // field(Name; SourceExpression)
                    // {
                    //     ApplicationArea = All;

                    // }
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(LayoutName)
                {
                    ApplicationArea = All;

                }
            }
        }
        trigger OnOpenPage()
        var
            myInt: Integer;
        begin
            Message('we are on the request page triggers');
        end;

    }

    // rendering
    // {
    //     layout(LayoutName)
    //     {
    //         Type = Excel;
    //         LayoutFile = 'mySpreadsheet.xlsx';
    //     }
    // }

    trigger OnInitReport()
    var
        myInt: Integer;
    begin
        Message('we are on the init trigger');
    end;

    trigger OnPreReport()
    var
        myInt: Integer;
    begin
        Message('we are on the prereport trigger');
    end;

    trigger OnPostReport()
    var
        myInt: Integer;
    begin
        Message('the report proceesing is done');
    end;

    var
        myInt: Integer;
}