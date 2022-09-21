unit Model.Query.Interfaces;

interface

uses
  Data.DB;

type
  iQuery = interface
    ['{C54AE0D4-613F-4E20-8839-F6D2847808D5}']
    function DataSet                   : TDataSet;
    function Close                     : iQuery;
    function Open                      : iQuery;
    function Clear                     : iQuery;
    function SQL(Value : String)       : iQuery;
  end;

implementation

end.