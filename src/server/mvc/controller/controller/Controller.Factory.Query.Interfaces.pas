unit Controller.Factory.Query.Interfaces;

interface

uses
  Model.Factory.Query.Interfaces;

type
  iControllerFactoryQuery = interface
    ['{8D2735F9-925D-4A27-BE3C-6D1603A00146}']
    function FactoryQuery : iFactoryQuery;
  end;

implementation

end.
