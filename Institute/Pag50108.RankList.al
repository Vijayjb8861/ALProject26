namespace ALProject.ALProject;

page 50108 RankList
{
    ApplicationArea = All;
    Caption = 'RankList';
    PageType = List;
    SourceTable = StudentRank;
    UsageCategory = Lists;
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
                field(Total; Rec.Total)
                {
                    ToolTip = 'Specifies the value of the Total field.', Comment = '%';
                }
                field(Rank; Rec.Rank)
                {
                    ToolTip = 'Specifies the value of the Rank field.', Comment = '%';
                }
            }
        }
    }

    trigger OnOpenPage()   //gets triggered on opening the page
    var
        position: Integer;
    begin
        Rec.Reset();
        Rec.SetCurrentKey(Total);
        Rec.Ascending(false);
        position := 1;

        Rec.FindSet();          //repeat-until
        repeat begin
            Rec.Rank := position;
            Rec.Modify();
            Commit();
            position := position + 1;
        end 
        until Rec.Next() = 0;



    end;
}
