unit Model.Query.Interfaces;

interface

uses
  Data.DB,
  System.JSON;

type
  iQuery = interface
    ['{C54AE0D4-613F-4E20-8839-F6D2847808D5}']
    function DataSet             : TDataSet;
    function Params(Param: String; Value: Variant): iQuery; overload;
    function Params(Param: String)      : Variant;          overload;
    function Open                : iQuery;
    function ExecSQL             : iQuery;
    function ApplyUpdates        : iQuery;
    function SQL(Value : String) : iQuery;
  end;

implementation

end.
