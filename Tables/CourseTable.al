table 50100 "Course Table"
{
    DataClassification = ToBeClassified;
    Caption = 'Information about the courses';
    DataCaptionFields = CourseID, CourseName;

    fields
    {
        field(1; CourseID; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Course ID';

        }
        field(2; CourseName; Text[30])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(3; Price; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(4; CourseType; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Offline","Online";
        }
        field(5; StartDate; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(6; InstructorID; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Customer;       // Regular Table Relation
                                            // TableRelation = Resource where(Type = const(Person));     //Filtered Table Relation
                                            //    TableRelation = if (CourseType = const(Online)) Resource where(Type = const(Person))    //conditional table relation
                                            //    else if (CourseType = const(Offline)) InstructorDetails;

        }
        field(7; InstuctorName; text[60])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(InstructorDetails.InstructorName where(InstructorID = field(InstructorID)));

        }
        field(8; Active; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(9; CourseDuration; Duration)
        {
            DataClassification = ToBeClassified;
        }
        field(10; PhoneNum; text[10])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = PhoneNo;
        }
        field(11; Email; text[100])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = EMail;

            trigger OnValidate()         //when data is entered
            var
                myInt: Integer;
            begin
                if not Rec.Email.Contains('@gmail.com') then begin
                    Error('Enter a Valid Email address containing @gmail.com');
                end;
            end;
        }
        field(12; URL; text[100])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = URL;
        }
        field(13; AvgPrice; Decimal)
        {

            FieldClass = FlowField;  //calculated fields
            CalcFormula = average("Course Table".Price);
        }
        field(14; Image; Blob)
        {
            DataClassification = ToBeClassified;
            Subtype = Bitmap;
        }
    }

    keys
    {
        key(PK; CourseID)           //primary key    40 keys per table   16 fields at max per key 
        {
            Clustered = true;
        }
        key(SK; CourseName)     //secondary key
        {

        }

    }

    fieldgroups
    {
        // Add changes to field groups here
        fieldgroup(Brick; CourseID, CourseName, Price, InstructorID) { }
    }

    var
        myInt: Integer;

    trigger OnInsert()                              //as soon as user enters primary key
    begin
        Message('A record is inserted');
    end;

    trigger OnModify()                            //for all other fields                
    begin
        Message('A record is modify');
    end;

    trigger OnDelete()                      //on deleting the record
    begin
        Message('A record is deleted');
    end;

    trigger OnRename()
    begin
        Message('A record is renamed');           //on changing/modifying the primary key
    end;

}


