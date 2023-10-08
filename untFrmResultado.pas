unit untFrmResultado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  untDadosPessoa;

type
  Tfrmresultado = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lblAltura: TLabel;
    lblPeso: TLabel;
    lblSexo: TLabel;
    lblIMC: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmresultado: Tfrmresultado;

implementation

{$R *.dfm}

procedure Tfrmresultado.FormShow(Sender: TObject);
begin
    lblAltura.Caption := FloatToStr(pub_Dados_pessoa.Altura);
    lblPeso.Caption := FloatToStr(pub_Dados_Pessoa.Peso);
    lblSexo.Caption := pub_Dados_Pessoa.Sexo;
    lblIMC.Caption := pub_Dados_Pessoa.IMC;
end;

end.
