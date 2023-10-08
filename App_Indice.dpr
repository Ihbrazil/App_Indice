program App_Indice;

uses
  Vcl.Forms,
  untFrmPrincipal in 'untFrmPrincipal.pas' {frmPrincipal},
  untFrmRequisitos in 'untFrmRequisitos.pas' {frmRequisitos},
  untFrmResultado in 'untFrmResultado.pas' {frmresultado},
  untDadosPessoa in 'untDadosPessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmRequisitos, frmRequisitos);
  Application.CreateForm(Tfrmresultado, frmresultado);
  Application.Run;
end.
