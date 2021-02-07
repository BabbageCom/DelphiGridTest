unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Xml.xmldom, Datasnap.DBClient,
  Datasnap.Provider, Datasnap.Xmlxform, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    DesignStyleComboBox: TComboBox;
    Panel2: TPanel;
    DataSource: TDataSource;
    XMLTransformProvider: TXMLTransformProvider;
    ClientDataSet: TClientDataSet;
    DBGrid: TDBGrid;
    Button2: TButton;
    procedure DesignStyleComboBoxChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  XML_File : String    ;


implementation

{$R *.dfm}


procedure TForm1.Button2Click(Sender: TObject);
begin
  ClientDataSet.MergeChangeLog;
  ClientDataSet.SaveToFile(XML_File,dfXML);
end;

procedure TForm1.DesignStyleComboBoxChange(Sender: TObject);
begin
  Case DesignStyleComboBox.ItemIndex of
    0 : DBGrid.DrawingStyle:=gdsThemed;
    1 : DBGrid.DrawingStyle:=gdsClassic;
    2 : DBGrid.DrawingStyle:=gdsGradient;
  End;
end;


procedure TForm1.FormCreate(Sender: TObject);
begin
  XML_File:=GetcurrentDir+'\my_xml.xml';
  if not fileexists(XML_File) then
  begin
    Showmessage('Without a proper '+XML_File+' you cannot test datagrids ');
    Application.Terminate;
    exit;  // termination takes time an this additional exit prevents execution of the next lines
  end;
  ClientDataSet.FileName:=XML_File;
  ClientDataSet.open;
  ClientDataSet.LogChanges:=False;
end;

end.




