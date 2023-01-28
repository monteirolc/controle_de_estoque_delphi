program ControleEstoque;

uses
  Vcl.Forms,
  CEPrincipal in 'CEPrincipal.pas' {frmPrincipal},
  CEDM in 'CEDM.pas' {dtmCE: TDataModule},
  CECadastro in 'CECadastro.pas' {frmCadastro},
  CEDialogo in 'CEDialogo.pas' {frmDialogo},
  CECadCli in 'CECadCli.pas' {frmCadCli},
  CECadFnc in 'CECadFnc.pas' {frmCadFnc},
  CECadProd in 'CECadProd.pas' {frmCadProd},
  CEAltCadastro in 'CEAltCadastro.pas' {frmAltCadastro},
  CEAltCadCli in 'CEAltCadCli.pas' {frmAltCadCli},
  CEAltCadFnc in 'CEAltCadFnc.pas' {frmAltCadFnc},
  CEAltCadProd in 'CEAltCadProd.pas' {frmAltCadProd},
  CEPesquisar in 'CEPesquisar.pas' {frmPesquisar},
  CEPesqCli in 'CEPesqCli.pas' {frmPesqCli},
  CEPesqFnc in 'CEPesqFnc.pas' {frmPesqFnc},
  CEPesqProd in 'CEPesqProd.pas' {frmPesqProd},
  CEFiltro in 'CEFiltro.pas' {frmFiltro},
  CEFiltCli in 'CEFiltCli.pas' {frmFiltCli},
  CEFiltFnc in 'CEFiltFnc.pas' {frmFiltFnc},
  CEFiltProd in 'CEFiltProd.pas' {frmFiltProd},
  CEOrdProd in 'CEOrdProd.pas' {frmOrdProd},
  CEPedido in 'CEPedido.pas' {frmPedido},
  CEPedVenda in 'CEPedVenda.pas' {frmPedVenda},
  CEPedCompra in 'CEPedCompra.pas' {frmPedCompra};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdtmCE, dtmCE);
  Application.Run;
end.
