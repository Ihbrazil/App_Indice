unit untFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, untFrmRequisitos,
  untFrmResultado, untDadosPessoa;

type
  TfrmPrincipal = class(TForm)
    btnResultado: TButton;
    btnRequisitos: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    edtAltura: TEdit;
    edtPeso: TEdit;
    cbxSexo: TComboBox;
    procedure btnRequisitosClick(Sender: TObject);
    procedure btnResultadoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnRequisitosClick(Sender: TObject);
begin
    FrmRequisitos.Show;
end;

procedure TfrmPrincipal.btnResultadoClick(Sender: TObject);
begin
  try
    pub_Dados_Pessoa.Altura := StrToFloat(edtAltura.Text);
    pub_Dados_Pessoa.Peso := StrToFloat(edtPeso.Text);
    pub_Dados_Pessoa.Sexo := cbxSexo.Text;
    pub_Dados_Pessoa.IMC := CalcularImc(pub_Dados_Pessoa.Peso,
                                        pub_Dados_Pessoa.Altura,
                                        pub_Dados_Pessoa.Sexo);

    frmResultado.ShowModal;
  except
    ShowMessage('Dados Inválidos!');
  end;

end;

end.
