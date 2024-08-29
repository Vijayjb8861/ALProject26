tableextension 50101 CustomerTableExt extends Customer
{
    fields
    {
        // Add changes to table fields here
        field(50101; LinkedIn; text[150])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = URL;
        }
         field(50102; Instagram; text[150])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = URL;
        }

        // modify(Address)
        // {
        //     Caption = 'Location';
        // }
    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
        // addlast(DropDown;Address){}
        

    }

    var
        myInt: Integer;
}