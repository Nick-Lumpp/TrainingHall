report 70003 "Factoral functions"
{

    UsageCategory = Tasks;
    ApplicationArea = All;
    ProcessingOnly = true;
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(Options)
                {
                    field(Input; Input)
                    {
                        Caption = 'Input';
                        ToolTip = 'Please input a number';
                        ApplicationArea = All;
                    }
                }
            }
        }
    }

    trigger OnPreReport()
    begin
        Message('%1! = %2', Input, Factoral(Input));
    end;

    var
        Input: Integer;

    procedure Factoral(n: Integer): Integer
    begin

        if n > 10 then
            Error('n may not be larger than 10');

        if n <= 1 then
            exit(1)
        else
            exit(n * Factoral(n - 1));
    end;
}

//Factoral(5) = 5 * Factoral(4)
//Factoral(5) = 4 * Factoral(3)
//Factoral(5) = 3 * Factoral(2)
//Factoral(5) = 2 * Factoral(1)
//Factoral(5) = 1 