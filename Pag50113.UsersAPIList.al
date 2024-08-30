namespace ALProject.ALProject;

page 50113 "Users API List"
{
    ApplicationArea = All;
    Caption = 'Users API List';
    PageType = List;
    SourceTable = "Users From API";
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(SLNo; Rec.SLNo)
                {
                    ToolTip = 'Specifies the value of the SLNo field.', Comment = '%';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.', Comment = '%';
                }
                field(email; Rec.email)
                {
                    ToolTip = 'Specifies the value of the email field.', Comment = '%';
                }
                field(phone; Rec.phone)
                {
                    ToolTip = 'Specifies the value of the phone field.', Comment = '%';
                }
                field(Website; Rec.Website)
                {
                    ToolTip = 'Specifies the value of the Website field.', Comment = '%';
                }
                field(WebID; Rec.WebID)
                {
                    ToolTip = 'Specifies the value of the WebID field.', Comment = '%';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(GetDataFromAPI)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    readfromresponse(response);
                end;
            }
        }
    }

    trigger OnOpenPage()
    var
        myInt: Integer;
        http_client: HttpClient;
        http_response: HttpResponseMessage;

    begin
        if http_client.Get('https://jsonplaceholder.typicode.com/users', http_response) then begin
            http_response.Content.ReadAs(response);

        end;


    end;


    procedure readfromresponse(response: Text)
    var
        json_array: JsonArray;
        json_value: JsonValue;
        json_object: JsonObject;
        json_token, json_valuetoken : JsonToken;   //container of any will formatted json data
        intloopcounter: Integer;
        RecUSersDtlsAPI: Record "Users From API";
        nocounter: Integer;
    begin

        nocounter := RecUSersDtlsAPI.Count + 1;


        if json_token.ReadFrom(response) then begin
            if json_token.IsArray then begin
                json_array := json_token.AsArray();


                for intloopcounter := 0 to json_array.Count - 1 do begin

                    json_array.Get(intloopcounter, json_token);

                    if json_token.IsObject then begin
                        json_object := json_token.AsObject();

                        RecUSersDtlsAPI.SLNo := nocounter;

                        json_object.Get('name', json_valuetoken);
                        RecUSersDtlsAPI.Name := json_valuetoken.AsValue().AsText();

                        json_object.Get('phone', json_valuetoken);
                        RecUSersDtlsAPI.phone := json_valuetoken.AsValue().AsText();

                        json_object.Get('email', json_valuetoken);
                        RecUSersDtlsAPI.email := json_valuetoken.AsValue().AsText();

                        json_object.Get('website', json_valuetoken);
                        RecUSersDtlsAPI.Website := json_valuetoken.AsValue().AsText();

                        json_object.Get('id', json_valuetoken);
                        RecUSersDtlsAPI.WebID := json_valuetoken.AsValue().AsInteger();

                        RecUSersDtlsAPI.Insert();
                        nocounter := nocounter + 1;

                    end;
                end;
            end;
        end;
    end;

    var
        response: Text;
}
