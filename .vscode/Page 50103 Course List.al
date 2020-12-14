page 50103 "Course List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Course;
    CardPageId = "Course Card";
    Editable = false;
    Caption = 'Course List';

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Code; Code)
                {
                    ApplicationArea = All;

                }
                field(Name; Name)
                {
                    ApplicationArea = All;

                }
                field(Description; Description)
                {
                    ApplicationArea = All;

                }
                field(Level; Level)
                {
                    ApplicationArea = All;

                }
                field(SPA; SPA)
                {
                    ApplicationArea = All;

                }
                field(Suggestion; Suggestion)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
            action("Insert Table")
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    InsertNewRecord();
                end;
            }
        }
    }

    var
        Level: text[30];
        Suggestion: text[80];
        SPA: Boolean;

    procedure InsertNewRecord();
    var
        courseRec: Record Course;
    begin
        with courseRec do begin
            Init;
            Code := '8004';
            Name := 'Installation @ Configuration';
            Description := 'Basic knowledge if installation @Configuration';
            Type := Type::"Remote Training";
            Duration := 2.0;
            Price := 1000.0;
            Active := true;
            Difficulty := 5;
            PassingRate := 75;
            Insert;
            Message('Already Insert');
        end;
        with courseRec do begin
            Init;
            Code := '80041';
            Name := 'Installation @ Configuration';
            Description := 'Basic knowledge if installation @Configuration';
            Type := Type::"Remote Training";
            Duration := 2.0;
            Price := 1000.0;
            Active := true;
            Difficulty := 5;
            PassingRate := 75;
            Insert;
            Message('Already Insert');
        end;
        with courseRec do begin
            Init;
            Code := '80042';
            Name := 'Installation @ Configuration';
            Description := 'Basic knowledge if installation @Configuration';
            Type := Type::"Remote Training";
            Duration := 2.0;
            Price := 1000.0;
            Active := true;
            Difficulty := 5;
            PassingRate := 75;
            Insert;
            Message('Already Insert');
        end;
        with courseRec do begin
            Init;
            Code := '80043';
            Name := 'Installation @ Configuration';
            Description := 'Basic knowledge if installation @Configuration';
            Type := Type::"Remote Training";
            Duration := 2.0;
            Price := 1000.0;
            Active := true;
            Difficulty := 5;
            PassingRate := 75;
            Insert;
            Message('Already Insert');
        end;
        with courseRec do begin
            Init;
            Code := '80044';
            Name := 'Installation @ Configuration';
            Description := 'Basic knowledge if installation @Configuration';
            Type := Type::"Remote Training";
            Duration := 2.0;
            Price := 1000.0;
            Active := true;
            Difficulty := 5;
            PassingRate := 75;
            Insert;
            Message('Already Insert');
        end;
    end;

    trigger OnAfterGetRecord();
    begin
        Level := '';
        Suggestion := '';
        SPA := false;
        case Difficulty of
            1 .. 5:
                begin
                    Level := 'Beginner';
                    Suggestion := 'Take e-elearning or remote training';
                end;
            6 .. 8:
                begin
                    Level := 'Advanced';
                    Suggestion := 'Attend instructor-led';
                end;
            9 .. 10:
                begin
                    Level := 'Advanced';
                    Suggestion := 'Attend instructor-led and self sduddy';
                end;
        end;
        if (passingRate >= 70) And (Difficulty >= 6) then
            SPA := true;
    end;

}
